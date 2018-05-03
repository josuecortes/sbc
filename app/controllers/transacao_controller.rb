class TransacaoController < ApplicationController
  skip_before_action :verify_authenticity_token
  def frente
  	@configuracao = Configuracao.first

    pagamento = PagSeguro::PaymentRequest.new

    @licencas = params["licencas"].to_i
    @estados = params["estados"]
    @valor = params["valor"]

    if @licencas > 2 
      licencas = (@licencas - 2) * @configuracao.valor_licenca
      adicionais = @licencas - 2
      item = PagSeguro::Item.new(amount: @configuracao.valor_licenca, description: 'Licenças adicionais', quantity: adicionais, id: 1)
      pagamento.items << item
    end

    @estados.each do |e|
      puts e
      puts '-----'
      descricao = "Estado - #{e}"
      item = PagSeguro::Item.new(amount: @configuracao.valor_estado, description: descricao, id: e)
      pagamento.items << item 
    end

    resposta = pagamento.register

    puts resposta.errors.count
    
    if resposta
      #return true

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: {link: resposta.url, retorno: true} }
      end

    else
      #return false

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: {link: "", retorno: false} }
      end

    end
  end

  def plano

  	@configuracao = Configuracao.first

    pagamento = PagSeguro::PaymentRequest.new

    @licencas = params["licencas"].to_i
    @estados = params["estados"]
    @valor = params["valor"]
    @dias = params["dias"].to_i
    @codigo = params["codigo"].to_s

    puts params

    if @licencas > 0 
      valor = @licencas * ((@dias * @configuracao.valor_licenca) / 365)
      adicionais = @licencas
      item = PagSeguro::Item.new(amount: valor, description: 'Licenças adicionais', quantity: adicionais, id: 1)
      pagamento.items << item
    end

    if @estados
      @estados.each do |e|
        puts e
        puts '-----'
        descricao = "Estado - #{e}"
        valor = 1 * ((@dias * @configuracao.valor_estado) / 365)
        item = PagSeguro::Item.new(amount: valor, description: descricao, id: e)
        pagamento.items << item 
      end
    end
    
    i = PagSeguro::Item.new(amount: 0.01, description: 'Plano Adicional', quantity: 1, id: @codigo)
    pagamento.items << i

    resposta = pagamento.register

    if resposta
      #return true

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: {link: resposta.url, retorno: true} }
      end

    else
      #return false

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: {link: "", retorno: false} }
      end

    end

  end

  def notificacao_pagseguro
    headers['Access-Control-Allow-Origin'] = '*'
    transaction = PagSeguro::Transaction.find_by_notification_code(params[:notificationCode])
    if transaction and transaction.errors.empty? and transaction.status and transaction.status.id == "3"


      if transaction.items.store.last.description == 'Plano Adicional'
        plano = Plano.where(transaction_code: transaction.items.store.last.id).first

        transaction.items.store.select{|c|c.description.include?("Estado")}.each do |e|
          plano.estados << e.description.gsub("Estado - ","")
        end

        if transaction.items.store[0].description == "Licenças adicionais"
          atual = plano.licencas + transaction.items.store[0].quantity
          plano.licencas = atual
        end

        plano.save

      else
        user = User.where(email: transaction.sender.email).first
        if user
          #USUARIO EXISTE
          empresa = user.empresa
          plano = empresa.planos.new
          plano.preco = transaction.gross_amount.to_s
          plano.desconto = transaction.discount_amount.to_s

          transaction.items.store.select{|c|c.description.include?("Estado")}.each do |e|
            plano.estados << e.description.gsub("Estado - ","")
          end

          plano.inicio = transaction.updated_at
          plano.fim = transaction.updated_at + 1.year

          if transaction.items.store[0].description == "Licenças adicionais"
            plano.licencas = transaction.items.store[0].quantity
          else
            plano.licencas = 2
          end
          
          plano.empresa_id = empresa.id
          plano.user_ids << user.id

          if plano.save
            puts "plano salvo"
          else
            puts "erro a salavar o plano"
          end

        else
          #CRIAR USUARIO
          u = User.new
          u.nome = transaction.sender.name
          u.email = transaction.sender.email
          u.password = password_confirmation = "12345678"
          u.permissao = "EMPRESA"
          u.ativo = true
          u.mudar_senha = false

          if u.save
            puts "Usuario #{u.email} criado!!!"
            puts "Criando Empresa..."
            e = Empresa.new
            e.nome = "Empresa de #{u.nome}"
            if e.save
              puts "Empresa #{e.nome} criada!!!"
              puts "Adicionando usuário #{e.nome} a empresa #{e.nome}..."
              u.empresa_id = e.id
              if u.save
                puts "Usuário #{e.nome} adicionado a empresa #{e.nome}!!!"
              else
                puts "Erro ao adicionar usuário a empresa"
              end

              plano = e.planos.new

              plano.preco = transaction.gross_amount.to_s
              plano.desconto = transaction.discount_amount.to_s

              transaction.items.store[1..-1].each do |e|
                plano.estados << e.description.gsub("Estado - ","")
              end

              plano.inicio = transaction.updated_at
              plano.fim = transaction.updated_at + 1.year
              
              if transaction.items.store[0].description == "Licenças adicionais"
                plano.licencas = transaction.items.store[0].quantity
              else
                plano.licencas = 2
              end
              
              plano.empresa_id = e.id
              plano.user_ids << u.id
              plano.transaction_code = transaction.code

              if plano.save
                puts "plano salvo"
              else
                puts "erro a salavar o plano"
              end

            else
              puts "Erro ao criar empresa #{e.nome}!!!"
            end

          else
            puts "Erro ao criar o usuario #{u.email}!!!"
          end

        end
      end
        
    end
  end
end
