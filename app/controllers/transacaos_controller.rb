class TransacaosController < ApplicationController
  before_action :set_transacao, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  respond_to :html

  def index
    @transacaos = Transacao.all
    respond_with(@transacaos)
  end

  def show
    respond_with(@transacao)
  end

  def new
    @transacao = Transacao.new
    respond_with(@transacao)
  end

  def edit
  end

  def create
    @transacao = Transacao.new(transacao_params)
    @transacao.save
    respond_with(@transacao)
  end

  def update
    @transacao.update(transacao_params)
    respond_with(@transacao)
  end

  def destroy
    @transacao.destroy
    respond_with(@transacao)
  end

  def notificacao_pagseguro
    headers['Access-Control-Allow-Origin'] = '*'
    transaction = PagSeguro::Transaction.find_by_notification_code(params[:notificationCode])
    if transaction and transaction.errors.empty? and transaction.status and transaction.status.id == "3"
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

  private
    def set_transacao
      @transacao = Transacao.find(params[:id])
    end

    def transacao_params
      params.require(:transacao).permit(:estados, :licencas, :valor, :status)
    end
end
