class Banco::Sbc::Atualizacao
  def self.start(data,data_sinapi = DATASSINAPI.first)
    puts inicio = Time.now
    self.instanciar_variaves_locais(data,data_sinapi)
    puts "Baixando e descompactando arquivos"
    self.baixar_e_descompaquitar_arquivos
    puts "Criando Insumos"
    self.criar_insumos
    puts "Set preços nos insumos"
    self.set_precos_nos_insumos
    puts "Criando Composições Sintéticas"
    self.criar_composicoes_sinteticas
    puts "Inserindo insumos nas Composições"
    self.inserindo_insumos_nas_composicoes
    puts "Calculando preços das Composições"
    self.set_precos_nas_composicoes
    puts fim = Time.now
    puts duracao = fim - inicio
  end

  def self.instanciar_variaves_locais(data,data_sinapi = DATASSINAPI.first)
    @data = data
    @mes =  data[0, 2]
    @ano =  data[3, 4]
    @ano1 = data[5, 2]
    @data_sinapi = data_sinapi
  end

  def self.baixar_e_descompaquitar_arquivos
    system "cd bancos/sbc
    mkdir #{@ano}-#{@mes}"
    REGIOESSBC.each do |regiao|
      system "cd bancos/sbc/#{@ano}-#{@mes}
      wget -c http://www.paineldetrabalho.com.br/informativosbc/informativoSBC/janeiro2018/912356/956/informativoSBC_#{@mes}#{@ano1}_#{regiao}.zip
      unzip -n informativoSBC_#{@mes}#{@ano1}_#{regiao}.zip"
    end
  end

  def self.criar_insumos
    arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_SPO.xls", packed: nil, file_warning: :ignore)
    arquivo.default_sheet = arquivo.sheets[3]
    (5..arquivo.last_row).each do |linha|
      codigo =    arquivo.row(linha)[0].to_i
      descricao = arquivo.row(linha)[1].to_s.strip
      unidade =   arquivo.row(linha)[2].to_s.strip
      if codigo >= 99000 and codigo <= 99999
        tipo = 3
      else
        tipo = 4
      end
      insumo = Banco::Sbc::Insumo.da_data(@data).com_codigo(codigo.to_s.completar_com_zeros_seis).first
      Banco::Sbc::Insumo.create(codigo: codigo.to_s.completar_com_zeros_seis, descricao: descricao, unidade: unidade, tipo: tipo, estados: {}, data: @data) if codigo != 0 and !insumo
    end
  end

  def self.set_precos_nos_insumos
    REGIOESSBC.each do |regiao|
      # regiao = "SPO"
      puts "Set preços nos insumos o estado #{regiao.regioes_sbc_to_uf}"
      arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_#{regiao}.xls", packed: nil, file_warning: :ignore)
      arquivo.default_sheet = arquivo.sheets[3]
      (5..arquivo.last_row).each do |linha|
        codigo =    arquivo.row(linha)[0].to_i.to_s.completar_com_zeros_seis
        preco =     arquivo.row(linha)[3].to_s.mudar_virgula_para_ponto.to_f
        if insumo = Banco::Sbc::Insumo.da_data(@data).com_codigo(codigo.to_s).first
          insumo.estados[regiao.regioes_sbc_to_uf] = {"pnd" => preco, "pd" => preco}
          insumo.save
        end
      end
    end
  end

  def self.criar_composicoes_sinteticas
    arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_SPO.xls", packed: nil, file_warning: :ignore)
    arquivo.default_sheet = arquivo.sheets[1]
    self.criar_composicoes_sinteticas_set(arquivo)
    arquivo.default_sheet = arquivo.sheets[2]
    self.criar_composicoes_sinteticas_set(arquivo)
  end

  def self.criar_composicoes_sinteticas_set(arquivo)
    (5..arquivo.last_row).each do |linha|
      codigo =    arquivo.row(linha)[0].to_s
      descricao = arquivo.row(linha)[1].to_s.strip
      unidade =   arquivo.row(linha)[4].to_s.strip
      negrito =   false
      negrito =   arquivo.font(linha,1).bold? if arquivo.font(linha,1)
      Banco::Sbc::Composicao.create(codigo: codigo, descricao: descricao, tipo: codigo[0, 3], unidade: unidade, estados: {}, data: @data, data_sinapi: @data_sinapi) if codigo.numeric? and negrito and codigo.size == 6
    end
  end

  def self.inserindo_insumos_nas_composicoes
    arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_SPO.xls", packed: nil, file_warning: :ignore)
    arquivo.default_sheet = arquivo.sheets[1]
    self.inserindo_insumos_nas_composicoes_set(arquivo)
    arquivo.default_sheet = arquivo.sheets[2]
    self.inserindo_insumos_nas_composicoes_set(arquivo)
  end

  def self.inserindo_insumos_nas_composicoes_set(arquivo)
    composicao = false
    (5..arquivo.last_row).each do |linha|
      codigo =      arquivo.row(linha)[0].to_s
      cod_substituicao = SBCSINAPIMO.select{|m|m[0] == codigo}.first
      quantidade =  arquivo.row(linha)[4].to_s.mudar_virgula_para_ponto.to_f
      negrito =     false
      negrito =     arquivo.font(linha,1).bold? if arquivo.font(linha,1)
      if codigo.numeric? and negrito and codigo.size == 6
        composicao.save if composicao
        composicao = Banco::Sbc::Composicao.da_data(@data).com_codigo(codigo).first
      elsif codigo.numeric? and codigo.size == 6
        if cod_substituicao
          c = Banco::Sinapi::Composicao.da_data(@data_sinapi).com_codigo(cod_substituicao[1]).first
          composicao.composicoes << {"b" => "SINAPI",  id: c.id, c: c.codigo, q: quantidade } if composicao and c
        else
          if i = Banco::Sbc::Insumo.da_data(@data).com_codigo(codigo).first
            composicao.insumos << {"b" => "SBC",  id: i.id, c: i.codigo, q: quantidade } if composicao
          end
        end
      end
    end
    composicao.save if composicao
  end

  def self.gerar_lista_de_codigos_dos_tipos_de_composicoes(data)
    self.instanciar_variaves_locais(data)
    array = []
    arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_SPO.xls", packed: nil, file_warning: :ignore)
    arquivo.default_sheet = arquivo.sheets[1]
    array = self.gerar_lista_de_codigos_dos_tipos_de_composicoes_set(arquivo, array)
    arquivo.default_sheet = arquivo.sheets[2]
    array = self.gerar_lista_de_codigos_dos_tipos_de_composicoes_set(arquivo, array)
    array
  end

  def self.gerar_lista_de_codigos_dos_tipos_de_composicoes_set(arquivo, array)
    (5..arquivo.last_row).each do |linha|
      codigo =    arquivo.row(linha)[0].to_s
      descricao = arquivo.row(linha)[1].to_s.strip
      negrito =   false
      negrito =   arquivo.font(linha,1).bold? if arquivo.font(linha,1)
      if codigo.numeric? and negrito and codigo.size == 3
        puts "      when \"#{codigo}\"    then \"#{descricao}\""
        array << codigo
      end
    end
    array
  end

  def self.set_precos_nas_composicoes(correcao = false)
    composicoes = Banco::Sbc::Composicao.da_data(@data)
    total = composicoes.count
    contator = 1
    composicoes.no_timeout.each do |c|
      c.set_precos(correcao)
      contator += 1
      puts "#{contator} / #{total}"
    end
  end

  # def self.set_unidades_nas_composicoes
  #   system "cd bancos/sbc
  #           mkdir #{@ano}-#{@mes}"
  #   system "cd bancos/sbc/#{@ano}-#{@mes}
  #           wget http://www.paineldetrabalho.com.br/informativosbc/informativoSBC/janeiro2017/664411/763/informativoSBC_#{@mes}#{@ano1}_SPO.zip
  #           unzip informativoSBC_#{@mes}#{@ano1}_SPO.zip"
  #   arquivo = Roo::Excel.new("bancos/sbc/#{@ano}-#{@mes}/informativoSBC_#{@mes}#{@ano1}_SPO.xls", packed: nil, file_warning: :ignore)
  #   arquivo.default_sheet = arquivo.sheets[1]
  #   self.set_unidades_nas_composicoes_salvar(arquivo)
  #   arquivo.default_sheet = arquivo.sheets[2]
  #   self.set_unidades_nas_composicoes_salvar(arquivo)
  # end

  # def self.set_unidades_nas_composicoes_salvar(arquivo)
  #   (5..arquivo.last_row).each do |linha|
  #     codigo =    arquivo.row(linha)[0].to_s
  #     unidade =   arquivo.row(linha)[4].to_s.strip
  #     negrito =   false
  #     negrito =   arquivo.font(linha,1).bold? if arquivo.font(linha,1)
  #     if codigo.numeric? and negrito and codigo.size == 6
  #       composicao = Banco::Sbc::Composicao.da_data(@data).com_codigo(codigo).first
  #       composicao.unidade = unidade
  #       composicao.save
  #     end
  #   end
  # end
end
