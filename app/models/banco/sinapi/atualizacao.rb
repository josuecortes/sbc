class Banco::Sinapi::Atualizacao
  # 1º parte do processo de atualizacao
  def self.parte_um(ano, mes)
    system "cd bancos/sinapi
            mkdir #{ano}-#{mes}"
    #system "cd bancos/sinapi/#{ano}-#{mes}
    #        wget http://www.caixa.gov.br/Downloads/sinapi-catalogo-de-composicoes-analiticas/CATALOGO_COMPOSICOES_ANALITICAS_#{mes}_#{ano}.xls"

    ESTADOS.each do |estado|
      system "cd bancos/sinapi/#{ano}-#{mes}
              wget -c http://www.caixa.gov.br/Downloads/sinapi-a-partir-jul-2009-#{estado.downcase}/SINAPI_ref_Insumos_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.zip
              wget -c http://www.caixa.gov.br/Downloads/sinapi-a-partir-jul-2009-#{estado.downcase}/SINAPI_ref_Insumos_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.zip

              unzip -o SINAPI_ref_Insumos_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.zip
              unzip -o SINAPI_ref_Insumos_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.zip

              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{mes}#{ano}_Desonerado.PDF #{estado}_d.pdf
              mv SINAPI_Preco_ref_Insumos_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Custo_Ref_Insumos_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_nd.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{mes}#{ano}_NaoDesonerado.PDF #{estado}_nd.pdf
              mv SINAPI_Custo_Ref_Insumos_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_nd.pdf
              mv 'SINAPI_Preco_Ref_Insumos_#{estado} _#{mes}#{ano}_NaoDesonerado.PDF' #{estado}_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Analitico_#{estado}_#{mes}#{ano}_Desonerado.xls #{estado}_analitico_desonerado.xls
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{ano}#{mes}_Desonerado.PDF #{estado}_d.pdf
              mv SINAPI_Preco_ref_Insumos_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Custo_Ref_Insumos_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_d.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_nd.pdf
              mv SINAPI_Preco_Ref_Insumos_#{estado}_#{ano}#{mes}_NaoDesonerado.PDF #{estado}_nd.pdf
              mv SINAPI_Custo_Ref_Insumos_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_nd.pdf
              mv 'SINAPI_Preco_Ref_Insumos_#{estado} _#{ano}#{mes}_NaoDesonerado.PDF' #{estado}_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Analitico_#{estado}_#{ano}#{mes}_Desonerado.xls #{estado}_analitico_desonerado.xls


              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.PDF #{estado}_c_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{mes}#{ano}_Desonerado.PDF #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_Sintetico_#{estado}_#{mes}#{ano}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.PDF #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonorado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{mes}#{ano}_NaoDesonerado.PDF #{estado}_c_nd.pdf
              mv SINAPI_Preco_ref_ComposiЗфes_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Sintetico_#{estado}_#{mes}#{ano}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Analitico_#{estado}_#{mes}#{ano}_NaoDesonerado.xls #{estado}_analitico_nao_desonerado.xls
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{ano}#{mes}_Desonerado.PDF #{estado}_c_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{ano}#{mes}_Desonerado.PDF #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_Sintetico_#{estado}_#{ano}#{mes}_Desonerado.pdf #{estado}_c_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{ano}#{mes}_NaoDesonerado.PDF #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{ano}#{mes}_NaoDesonorado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{ano}#{mes}_NaoDesonerado.PDF #{estado}_c_nd.pdf
              mv SINAPI_Preco_ref_ComposiЗфes_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Sintetico_#{estado}_#{ano}#{mes}_NaoDesonerado.pdf #{estado}_c_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_Analitico_#{estado}_#{ano}#{mes}_NaoDesonerado.xls #{estado}_analitico_nao_desonerado.xls

              pdftohtml -xml -i #{estado}_nd.pdf
              pdftohtml -xml -i #{estado}_d.pdf

              pdftohtml -xml -i #{estado}_c_nd.pdf
              pdftohtml -xml -i #{estado}_c_d.pdf"
    end
    system "cd bancos/sinapi/#{ano}-#{mes} 
            libreoffice --headless --convert-to ods SP_analitico_desonerado.xls"
    self.array_de_insumos_do_arquivo("AP", ano, mes).each do |i|
      if tipo = Banco::Sinapi::InsumoTipo.com_codigo(i["codigo"]).first
        tipo.descricao = i["descricao"]
        tipo.save
      else
        tipo = Banco::Sinapi::InsumoTipo.new
        tipo.codigo = i["codigo"]
        tipo.descricao = i["descricao"]
        tipo.tipo = 0
        tipo.save
      end
    end
  end
  # / 1º parte do processo de atualizacao

  # 2º parte do processo de atualizacao
  def self.parte_dois(ano, mes)
    comeco = Time.now
    self.criar_insumos(ano, mes)
    ESTADOS.each do |estado|
      self.set_pr_nao_desonerado_nos_insumos(estado, ano, mes)
      puts "Insumos - set preços não desonerados - #{estado}"
      self.set_pr_desonerado_nos_insumos(estado, ano, mes)
      puts "Insumos - set preços desonerados - #{estado}"
    end
    self.criar_composicoes(ano, mes)
    puts "Set preços nas composicoes"
    self.composicoes_set_precos(ano, mes)
    puts "Calcular preços das composicoes"
    Banco::Sinapi::Composicao.da_data("#{mes}/#{ano}").each {|c| c.set_precos}
    puts "Auditar Preços das Composições"
    a = self.auditar_precos(ano, mes)
    puts "\nFim do Processo de Atualização SINAPI #{((Time.now - comeco) / 60).round(2)} minutos"
    a
  end

  def self.criar_insumos(ano, mes)
    comeco = Time.now
    self.array_de_insumos_do_arquivo("AP", ano, mes).each do |i|
      ti = Banco::Sinapi::InsumoTipo.com_codigo(i["codigo"]).first

      insumo = Banco::Sinapi::Insumo.new
      insumo.data =       "#{mes}/#{ano}"
      insumo.codigo =     i["codigo"]
      insumo.descricao =  i["descricao"]
      insumo.tipo =       ti.tipo
      insumo.unidade =    i["unidade"]
      insumo.estados =    {}
      ESTADOS.each {|estado| insumo.estados["#{estado}"] = {"pnd" => 0.0, "pd" => 0.0} }
      insumo.save
    end
    puts "Insumos criados - #{((Time.now - comeco) / 60).round(2)} minutos"
  end

  def self.set_pr_nao_desonerado_nos_insumos(estado, ano, mes)
    self.array_de_insumos_do_arquivo(estado, ano, mes).each do |i|
      insumo = Banco::Sinapi::Insumo.com_codigo(i["codigo"]).da_data("#{mes}/#{ano}").first
      insumo.estados["#{estado}"]["pnd"] = i["pr_unitario"]
      insumo.save
    end
  end

  def self.set_pr_desonerado_nos_insumos(estado, ano, mes)
    self.array_de_insumos_do_arquivo(estado, ano, mes, com_desoneracao = true).each do |i|
      insumo = Banco::Sinapi::Insumo.com_codigo(i["codigo"]).da_data("#{mes}/#{ano}").first
      insumo.estados["#{estado}"]["pd"] = i["pr_unitario"]
      insumo.save
    end
  end

  def self.criar_composicoes(ano, mes)
    comeco = Time.now
    self.composicoes_em_array(ano, mes).each do |c|
      composicao = Banco::Sinapi::Composicao.new
      composicao.data =         "#{mes}/#{ano}"
      composicao.codigo =       c["codigo"]
      composicao.descricao =    c["descricao"]
      composicao.tipo =         c["tipo"]
      composicao.unidade =      c["unidade"]
      composicao.estados =      {}
      composicao.composicoes =  c["composicoes"]
      composicao.insumos =      c["insumos"]
      composicao.save
    end
    puts "Composições criadas - #{((Time.now - comeco) / 60).round(2)} minutos"
  end
  # / 2º parte do processo de atualizacao

  # Criação do Array com os insumos SINAPI
    def self.array_de_insumos_do_arquivo(estado, ano, mes, com_desoneracao = false)
      array = []
      if com_desoneracao
        File.readlines("bancos/sinapi/#{ano}-#{mes}/#{estado}_d.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{mes}/#{estado}_d.xml")
      else
        File.readlines("bancos/sinapi/#{ano}-#{mes}/#{estado}_nd.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{mes}/#{estado}_nd.xml")
      end
      array = self.retirar_cabecalho(array)
      array.each {|linha| linha[0, (linha.index(">") + 1)] = ""}
      array.each {|linha| linha[-8, 8] = ""}
      array = self.separar_por_insumo(array)
      self.insumos_em_hash(array)
    end

    def self.retirar_cabecalho(array_1)
      cabecalho = true
      array_de_retorno = []
      array_1.each do |linha|
        if linha.include? "Obs: dimensões entre asteríscos (*) indicam a aceitação de medidas aproximadas.</text>" or linha.include? "Total de Insumos:</text>"
          cabecalho = true
        elsif linha.include? "para preço atribuído com base no preço do insumo para a localidade de São Paulo.</text>"
          cabecalho = false
        else
          array_de_retorno << linha unless cabecalho
        end
      end
      array_de_retorno
    end

    def self.separar_por_insumo(array)
      array_de_retorno = []
      insumo = []
      array.each do |linha|
        l2 = ""
        l2 << linha
        l2[0, 0] = "1"
        l2 = l2.to_i
        if l2.to_s.size == 9
          array_de_retorno << insumo if insumo.size > 0
          insumo = []
          insumo << linha
        else
          insumo << linha
        end
      end
      array_de_retorno << insumo if insumo.size > 0
      array_de_retorno
    end

    def self.insumos_em_hash(array)
      array_de_retorno = []
      insumo = {}
      array.each do |i|
        i.delete_at(-1)
        insumo["codigo"] = i[0]
        i.delete_at(0)
        insumo["unidade"] = i[0].mascara_de_unidade
        i.delete_at(0)
        insumo["pr_unitario"] = i[0].mudar_virgula_para_ponto.to_f
        i.delete_at(0)
        insumo["descricao"] = ""
        i.each {|x| insumo["descricao"] << "#{x} "}
        insumo["descricao"][-1,1] = ""
        array_de_retorno << insumo
        insumo = {}
      end
      array_de_retorno
    end
  # / Criação do Array com os insumos SINAPI

  # Criação do Array com as composicoes SINAPI
    # def self.composicoes_em_array(ano, mes)
    #   array_de_retorno =  []
    #   composicoes =       []
    #   insumos =           []
    #   cabeca =            false
      
    #   arquivo = Roo::Excel.new("bancos/sinapi/#{ano}-#{mes}/CATALOGO_COMPOSICOES_ANALITICAS_#{mes}_#{ano}.xls", packed: nil, file_warning: :ignore)
      # (5..arquivo.last_row).each do |linha|
      #   campo_classe =      arquivo.row(linha)[0].to_s.strip
      #   campo_codigo =      arquivo.row(linha)[1].to_s.strip
      #   campo_descricao =   arquivo.row(linha)[2].to_s.strip
      #   campo_unidade =     arquivo.row(linha)[3].to_s.strip if arquivo.row(linha)[3]
      #   campo_coeficiente = arquivo.row(linha)[4].to_s.strip if arquivo.row(linha)[4]
      #   puts campo_coeficiente.class

    #     if campo_coeficiente.blank?
    #       if cabeca
    #         array_de_retorno << {"codigo" => cabeca["codigo"], "tipo" => cabeca["tipo"], "descricao" => cabeca["descricao"], "unidade" => cabeca["unidade"], "composicoes" => composicoes, "insumos" => insumos}
    #         composicoes = []
    #         insumos = []
    #       end
    #       cabeca = {"codigo" => self.corrigir_codigo_da_composicao(campo_codigo), "tipo" => campo_classe, "descricao" => campo_descricao, "unidade" => campo_unidade}
    #       puts cabeca
    #     elsif campo_classe == "COMPOSICAO"
    #       composicoes << {"c" => self.corrigir_codigo_da_composicao(campo_codigo), "q" => campo_coeficiente.mudar_virgula_para_ponto.to_f}
    #     elsif campo_classe == "INSUMO"
    #       insumos << {"c" => campo_codigo.completar_com_zeros, "q" => campo_coeficiente.mudar_virgula_para_ponto.to_f}
    #     end
    #   end
    #   array_de_retorno << {"codigo" => cabeca["codigo"], "tipo" => cabeca["tipo"], "descricao" => cabeca["descricao"], "unidade" => cabeca["unidade"], "composicoes" => composicoes, "insumos" => insumos}
    #   array_de_retorno
    # end

    def self.corrigir_codigo_da_composicao(codigo)
      codigo[codigo.index("."), 2] = "" if codigo.include? '.'
      codigo[(codigo.index("/") + 1), 3] = codigo[(codigo.index("/") + 1), 3].completar_com_zeros_tres if codigo.include? "/"
      codigo
    end


    def self.composicoes_em_array(ano,mes)
      composicoes = []
      insumos = []
      array_retorno = []
      arquivo = Roo::Spreadsheet.open("bancos/sinapi/#{ano}-#{mes}/SP_analitico_desonerado.ods", packed: nil, file_warning: :ignore)
       (8..arquivo.last_row).each do |linha|
        composicao_codigo =     arquivo.row(linha)[6].to_s.strip
        composicao_tipo =       arquivo.row(linha)[1].to_s.strip
        composicao_descricao =  arquivo.row(linha)[7].to_s.strip
        composicao_unidade =    arquivo.row(linha)[8].to_s.strip
        composicao_vmo =        arquivo.row(linha)[19].to_s.strip
        item_tipo =             arquivo.row(linha)[11].to_s.strip
        item_codigo =           arquivo.row(linha)[12].to_s.strip
        item_descricao =        arquivo.row(linha)[13].to_s.strip
        item_unidade =          arquivo.row(linha)[14].to_s.strip
        item_coeficiente =      arquivo.row(linha)[16].to_s.strip
        if item_tipo.blank? and !composicao_vmo.blank?
          array_retorno << @composicao if @composicao
          composicoes = []
          insumos = []
          @composicao = {"codigo" => self.corrigir_codigo_da_composicao(composicao_codigo), "tipo" => composicao_tipo, "descricao" => composicao_descricao, "unidade" => composicao_unidade, "composicoes" => [], "insumos" => []}
        elsif !item_tipo.blank? and item_tipo == "COMPOSICAO" and composicao_vmo.blank?
          @composicao["composicoes"] << {"c" => self.corrigir_codigo_da_composicao(item_codigo), "q" => item_coeficiente.mudar_virgula_para_ponto.to_f}
        elsif !item_tipo.blank? and item_tipo == "INSUMO" and composicao_vmo.blank?
          @composicao["insumos"] << {"c" => item_codigo.completar_com_zeros, "q" => item_coeficiente.mudar_virgula_para_ponto.to_f}
        end
        array_retorno << @composicao if linha == arquivo.last_row
      end
      return array_retorno
    end
  # / Criação do Array com as composicoes SINAPI

  # Set Preços das Composições
  def self.composicoes_set_precos(ano, mes)
    composicoes = Banco::Sinapi::Composicao.da_data("#{mes}/#{ano}")
    composicoes.each do |c|
      ESTADOS.each {|estado| c.estados["#{estado}"] = {"pnd" => 0.0, "pd" => 0.0}}
      c.save
    end
    ESTADOS.each do |estado|
      puts "Set preços unitários Não Desonerados da CAIXA em #{estado}"
      array = []
      puts File.exist?("bancos/sinapi/#{ano}-#{mes}/#{estado}_c_nd.xml")
      File.readlines("bancos/sinapi/#{ano}-#{mes}/#{estado}_c_nd.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{mes}/#{estado}_c_nd.xml")
      array = self.composicoes_set_precos_retirar_cabecalho(array)
      array.each {|linha| linha[0, (linha.index(">") + 1)] = ""}
      array.each {|linha| linha[-8, 8] = ""}
      array_codigo_valor = []
      array.each {|linha| array_codigo_valor << {codigo: linha[0, 14].strip, valor: linha[-15, 15].mudar_virgula_para_ponto.to_f}}
      array_codigo_valor.each do |cr|
        if composicao = Banco::Sinapi::Composicao.com_codigo(cr[:codigo]).da_data("#{mes}/#{ano}").first
          composicao.estados[estado]["pnd"] = cr[:valor]
          composicao.save
        end
      end
      puts "Set preços unitários Desonerados da CAIXA em #{estado}"
      array = []
      File.readlines("bancos/sinapi/#{ano}-#{mes}/#{estado}_c_d.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{mes}/#{estado}_c_d.xml")
      array = self.composicoes_set_precos_retirar_cabecalho(array)
      array.each {|linha| linha[0, (linha.index(">") + 1)] = ""}
      array.each {|linha| linha[-8, 8] = ""}
      array_codigo_valor = []
      array.each {|linha| array_codigo_valor << {codigo: linha[0, 14].strip, valor: linha[-15, 15].mudar_virgula_para_ponto.to_f}}
      array_codigo_valor.each do |cr|
        if composicao = Banco::Sinapi::Composicao.com_codigo(cr[:codigo]).da_data("#{mes}/#{ano}").first
          composicao.estados[estado]["pd"] = cr[:valor]
          composicao.save
        end
      end
    end
    true
  end

  def self.composicoes_set_precos_retirar_cabecalho(array_1)
    cabecalho = true
    array_de_retorno = []
    array_1.each {|linha| array_de_retorno << linha if (linha.include? "width=\"914\" height=\"9\"") or (linha.include? "width=\"907\" height=\"9\"") or (linha.include? "width=\"900\" height=\"9\"") or (linha.include? "width=\"893\" height=\"9\"") or (linha.include? "width=\"871\" height=\"9\"") or (linha.include? "width=\"914\" height=\"13\"") or (linha.include? "width=\"907\" height=\"13\"") or (linha.include? "width=\"900\" height=\"13\"") or (linha.include? "width=\"893\" height=\"13\"") or (linha.include? "width=\"871\" height=\"13\"") or (linha.include? "width=\"93\" height=\"914\"")}
    return array_de_retorno
  end

  # Checagem
  def self.checar_composicoes_com_valor_igual_a_zero(data)
    Banco::Sinapi::Composicao.da_data(data).each do |c|
      ESTADOS.each do |e|
        if (c.estados[e]["pnd"] == 0.0) or (c.estados[e]["pd"] == 0.0)
          puts c.id
          puts e
        end
      end
    end
  end

  # Correção do Preços Unitários das Composições de todos os meses
  def self.correcao_dos_precos_unitarios_das_composicoes(ano, mes)
    meses = []
    (mes..(mes+5)).to_a.each {|m| meses << m.to_s.completar_com_zeros_dois}

    # Donwload
    ESTADOS.each do |estado|
      unless File.exist?("bancos/sinapi/SINAPI_ref_Insumos_Composicoes_#{estado}_#{meses.first}a#{meses.last}#{ano}_v_PDF.zip")
        system "cd bancos/sinapi/
              wget http://www.caixa.gov.br/Downloads/sinapi-a-partir-jul-2009-#{estado.downcase}/SINAPI_ref_Insumos_Composicoes_#{estado}_#{meses.first}a#{meses.last}#{ano}_v_PDF.zip"
      end
    end

    ESTADOS.each do |estado|
      system "cd bancos/sinapi/
              unzip SINAPI_ref_Insumos_Composicoes_#{estado}_#{meses.first}a#{meses.last}#{ano}_v_PDF.zip"
      meses.each do |m|
        system "cd bancos/sinapi/
              unzip SINAPI_ref_Insumos_Composicoes_#{estado}_#{m}#{ano}_Desonerado.zip
              unzip SINAPI_ref_Insumos_Composicoes_#{estado}_#{m}#{ano}_NaoDesonerado.zip

              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{m}#{ano}_Desonerado.pdf #{ano}-#{m}_#{estado}_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{m}#{ano}_NaoDesonerado.pdf #{ano}-#{m}_#{estado}_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{m}#{ano}_Desonerado.pdf #{ano}-#{m}_#{estado}_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{m}#{ano}_NaoDesonerado.pdf #{ano}-#{m}_#{estado}_nd.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{m}#{ano}_Desonerado.PDF #{ano}-#{m}_#{estado}_d.pdf
              mv SINAPI_Custo_Ref_Composicoes_#{estado}_#{m}#{ano}_NaoDesonerado.PDF #{ano}-#{m}_#{estado}_nd.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{m}#{ano}_Desonerado.PDF #{ano}-#{m}_#{estado}_d.pdf
              mv SINAPI_Custo_ref_Composicoes_#{estado}_#{m}#{ano}_NaoDesonerado.PDF #{ano}-#{m}_#{estado}_nd.pdf

              pdftohtml -xml -i #{ano}-#{m}_#{estado}_d.pdf
              pdftohtml -xml -i #{ano}-#{m}_#{estado}_nd.pdf"
      end
    end

    meses.each do |m|
      composicoes = Banco::Sinapi::Composicao.da_data("#{m}/#{ano}")
      ESTADOS.each do |estado|

        puts "Set preços unitários Não Desonerados da CAIXA em #{estado} do mes #{m}/#{ano}"
        array = []
        File.readlines("bancos/sinapi/#{ano}-#{m}_#{estado}_nd.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{m}_#{estado}_nd.xml")
        array = self.composicoes_set_precos_retirar_cabecalho(array)
        array.each {|linha| linha[0, (linha.index(">") + 1)] = ""}
        array.each {|linha| linha[-8, 8] = ""}
        array_codigo_valor = []
        array.each {|linha| array_codigo_valor << {codigo: linha[0, 14].strip, valor: linha[-15, 15].mudar_virgula_para_ponto.to_f}}
        array_codigo_valor.each do |cr|
          if composicao = Banco::Sinapi::Composicao.com_codigo(cr[:codigo]).da_data("#{m}/#{ano}").first
            composicao.estados[estado]["pnd"] = cr[:valor]
            composicao.save
          end
        end

        puts "Set preços unitários Desonerados da CAIXA em #{estado} do mes #{m}/#{ano}"
        array = []
        File.readlines("bancos/sinapi/#{ano}-#{m}_#{estado}_d.xml").each {|l| array << l} if File.exist?("bancos/sinapi/#{ano}-#{m}_#{estado}_d.xml")
        array = self.composicoes_set_precos_retirar_cabecalho(array)
        array.each {|linha| linha[0, (linha.index(">") + 1)] = ""}
        array.each {|linha| linha[-8, 8] = ""}
        array_codigo_valor = []
        array.each {|linha| array_codigo_valor << {codigo: linha[0, 14].strip, valor: linha[-15, 15].mudar_virgula_para_ponto.to_f}}
        array_codigo_valor.each do |cr|
          if composicao = Banco::Sinapi::Composicao.com_codigo(cr[:codigo]).da_data("#{m}/#{ano}").first
            composicao.estados[estado]["pd"] = cr[:valor]
            composicao.save
          end
        end

      end
    end
    true
  end
  # End Correção do Preços Unitários das Composições de todos os meses

  def self.auditar_precos(ano, mes)
    composicoes = Banco::Sinapi::Composicao.da_data("#{mes}/#{ano}")
    retorno = {}
    total = composicoes.count
    item = 1
    ESTADOS.each {|estado| retorno[estado] = []}
    composicoes.each do |c|
      ESTADOS.each do |estado|
        if c.estados_calculado[estado]["pnd"] != c.estados[estado]["pnd"]
          retorno[estado] << "#{c.codigo} pnd Original: #{c.estados[estado]["pnd"]} - Calculado: #{c.estados_calculado[estado]["pnd"]}"
          puts "#{estado}: #{item} / #{total} - Preços Onerados não são iguais. Original: #{c.estados[estado]["pnd"]} - Calculado: #{c.estados_calculado[estado]["pnd"]} - Diferenca: #{c.estados[estado]["pnd"] - c.estados_calculado[estado]["pnd"]}"
        elsif c.estados_calculado[estado]["pd"] != c.estados[estado]["pd"]
          retorno[estado] << "#{c.codigo} pd Original: #{c.estados[estado]["pd"]} - Calculado: #{c.estados_calculado[estado]["pd"]}"
          puts "#{estado}: #{item} / #{total} - Preços Desonerados não são iguais. Original: #{c.estados[estado]["pd"]} - Calculado: #{c.estados_calculado[estado]["pd"]} - Diferenca: #{c.estados[estado]["pnd"] - c.estados_calculado[estado]["pnd"]}"
        else
          puts "#{estado}: #{item} / #{total}"
        end
      end
      item += 1
    end
    retorno
  end
end
