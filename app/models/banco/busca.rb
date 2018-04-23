class Banco::Busca
  def self.new(params, usuario_logado, empresa_logada)
    if empresa_logada.pode_usar_bancos?
      if params["insumos"]
        self.new_passo_2 self.classe_insumo_do_banco(params["banco"]), params, usuario_logado
      else
        self.new_passo_2 self.classe_composicao_do_banco(params["banco"]), params, usuario_logado
      end
    else
      if BASESADICIONAIS.include? params["banco"]
        [Banco::Sedop::Insumo.com_codigo("").paginate(:page => params[:page], :per_page => 30), 0]
      else
        if params["insumos"]
          self.new_passo_2 self.classe_insumo_do_banco(params["banco"]), params, usuario_logado
        else
          self.new_passo_2 self.classe_composicao_do_banco(params["banco"]), params, usuario_logado
        end
      end
    end
  end

  def self.new_passo_2(classe, params, usuario_logado)

    if params[:page]
      comecar_de = (params[:page].to_i - 1) * 30
    else
      comecar_de = 0
    end

    if params["banco"]

      if params["banco"] == "Emp"

        if params["filtro"] != ""
          if params["tipo_sinapi"] != ""
            itens =       classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).do_tipo(params["tipo_sinapi"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
            itens_count = classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).do_tipo(params["tipo_sinapi"]).buscar(params["filtro"]).count
          else
            itens =       classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
            itens_count = classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar(params["filtro"]).count
          end
        else
          if params["tipo_sinapi"] != ""
            itens =       classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).do_tipo(params["tipo_sinapi"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
            itens_count = classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).do_tipo(params["tipo_sinapi"]).count
          else
            itens =       classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).asc(params["order"]).paginate :page => params[:page], :per_page => 30
            itens_count = classe.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).count
          end
        end

      elsif params["banco"] == "SEINFRA"

        if params["filtro"] != ""
          if params["tipo_seinfra"] != ""
            if params["grupo_seinfra"] and params["grupo_seinfra"] != ""
              itens =       classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).buscar(params["filtro"]).do_grupo(params["grupo_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).buscar(params["filtro"]).do_grupo(params["grupo_seinfra"]).count
            else
              itens =       classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).buscar(params["filtro"]).count
            end
          else
            if params["grupo_seinfra"] and params["grupo_seinfra"] != ""
              itens =       classe.da_data(params["data_seinfra"]).buscar(params["filtro"]).do_grupo(params["grupo_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).buscar(params["filtro"]).do_grupo(params["grupo_seinfra"]).count
            else
              itens =       classe.da_data(params["data_seinfra"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).buscar(params["filtro"]).count
            end
          end
        else
          if params["tipo_seinfra"] != ""
            if params["grupo_seinfra"] and params["grupo_seinfra"] != ""
              itens =       classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).do_grupo(params["grupo_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).do_grupo(params["grupo_seinfra"]).count
            else
              itens =       classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).do_tipo(params["tipo_seinfra"]).count
            end
          else
            if params["grupo_seinfra"] and params["grupo_seinfra"] != ""
              itens =       classe.da_data(params["data_seinfra"]).do_grupo(params["grupo_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).do_grupo(params["grupo_seinfra"]).count
            else
              itens =       classe.da_data(params["data_seinfra"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_seinfra"]).count
            end
          end
        end

      else

        if params["data_#{params["banco"].gsub(" ", "_").downcase}"] == "ultima"
          if params["filtro"] != ""
            if params["tipo_#{params["banco"].gsub(" ", "_").downcase}"] != ""
              itens =       classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).collection.aggregate([{ "$unwind" => "$codigo" }, { "$limit" => 100 }, { "$sort" => { "codigo" => 1 } }])
              itens_count = itens.count
            else
              itens =       classe.collection.aggregate([{ "$match" => { "$or" => [{ "descricao" => /#{params["filtro"].sepp}/i }, { "codigo" => /#{params["filtro"].sepp}/i } ] } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$skip" => comecar_de }, { "$limit" => 30 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
              itens_count = classe.collection.aggregate([{ "$match" => { "$or" => [{ "descricao" => /#{params["filtro"].sepp}/i }, { "codigo" => /#{params["filtro"].sepp}/i } ] } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo" } }], :allow_disk_use => true).count
            end
          else
            if params["tipo_#{params["banco"].gsub(" ","_").downcase}"] != ""
              itens =       classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).collection.aggregate([{ "$unwind" => "$codigo" }, { "$limit" => 100 }, { "$sort" => { "codigo" => 1 } }])
              itens_count = itens.count
            else
              itens =       classe.collection.aggregate([{ "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$skip" => comecar_de }, { "$limit" => 30 }, { "$sort" => { data: -1 } }], :allow_disk_use => true)
              itens_count = classe.collection.aggregate([{ "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo" } }], :allow_disk_use => true).count
            end
          end
        elsif params["data_#{params["banco"].gsub(" ", "_").downcase}"] == "todas"
          if params["filtro"] != ""
            if params["tipo_#{params["banco"].gsub(" ", "_").downcase}"] != ""
              itens =       classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).count
            else
              itens =       classe.buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.buscar(params["filtro"]).count
            end
          else
            if params["tipo_#{params["banco"].gsub(" ","_").downcase}"] != ""
              itens =       classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).count
            else
              itens =       classe.asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.count
            end
          end
        else#if params["data_#{params["banco"].gsub(" ", "_").downcase}"] != ""
          if params["filtro"] != ""
            if params["tipo_#{params["banco"].gsub(" ", "_").downcase}"] != ""
              itens =       classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).count
            else
              itens =       classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).buscar(params["filtro"]).count
            end
          else
            if params["tipo_#{params["banco"].gsub(" ","_").downcase}"] != ""
              itens =       classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).do_tipo(params["tipo_#{params["banco"].gsub(" ", "_").downcase}"]).count
            else
              itens =       classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).asc(params["order"]).paginate :page => params[:page], :per_page => 30
              itens_count = classe.da_data(params["data_#{params["banco"].gsub(" ", "_").downcase}"]).count
            end
          end
        end

      end

    else

      itens = Banco::Sinapi::Insumo.da_data("03/1984")
      itens_count = 0

    end

    [itens, itens_count]
  end

  # Auto Completar
  def self.autocompletar(objeto, usuario_logado, empresa_logada, params)
    banco = params["banco"]
    banco = "Emp" if banco == "Próprio"
    if empresa_logada.pode_usar_o_banco?(banco)
      data = self.autocompletar_data(objeto, params)
      
      filtro = params[:filtro]

      if banco == "Emp"
        if params["field"] == "codigo"
          if params["classe"] == "insumo"
            itens = Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_codigo(filtro).asc(:descricao).limit(100)
          else
            itens = Banco::Emp::Composicao.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_codigo(filtro).asc(:descricao).limit(100)
          end
        else
          if params["classe"] == "insumo"
            itens = Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_descricao(filtro).asc(:descricao).limit(100)
          else
            itens = Banco::Emp::Composicao.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_descricao(filtro).asc(:descricao).limit(100)
          end
        end
      elsif banco == "undefined"

      else
        if params["field"] == "codigo"
          if params["classe"] == "insumo"
            itens = self.classe_insumo_do_banco(banco).da_data(data).buscar_por_codigo(filtro).asc(:descricao).limit(100)
          else
            itens = self.classe_composicao_do_banco(banco).da_data(data).buscar_por_codigo(filtro).asc(:descricao).limit(100)
            if itens.count == 0 and banco == "SINAPI"
              itens = self.classe_composicao_do_banco(banco).collection.aggregate([{ "$match" => { "codigo" => /^#{filtro}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
              itens.each {|item| item["b"] = banco}
            end
          end
        else
          if params["classe"] == "insumo"
            itens = self.classe_insumo_do_banco(banco).da_data(data).buscar_por_descricao(filtro).asc(:descricao).limit(100)
          else
            itens = self.classe_composicao_do_banco(banco).da_data(data).buscar_por_descricao(filtro).asc(:descricao).limit(100)
            if itens.count == 0 and banco == "SINAPI"
              itens = self.classe_composicao_do_banco(banco).collection.aggregate([{ "$match" => { "descricao" => /#{filtro.sepp}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
              itens.each {|item| item["b"] = banco}
            end
          end
        end
      end

      if (banco == "Emp") and (objeto.class == Banco::Emp::Composicao)
        array_de_retorone = []
        itens.each do |i|
          if objeto.id != i.id
            if i.estados[self.banco_estado(banco, objeto.estado)]
              i.estados[self.banco_estado(banco, objeto.estado)]["pnd"] ? (i.pnd = i.estados[self.banco_estado(banco, objeto.estado)]["pnd"].real_contabil) : (i.pnd = 0.0.real_contabil)
              i.estados[self.banco_estado(banco, objeto.estado)]["pd"]  ? (i.pd =  i.estados[self.banco_estado(banco, objeto.estado)]["pd"].real_contabil)  : (i.pd = 0.0.real_contabil)
              array_de_retorone << i
            end
          end
        end
        return array_de_retorone
      elsif objeto.class == Banco::Emp::Composicao
        array_de_retorone = []
        if banco == "SETOP"
          itens.each do |i|
            i.estados[self.banco_estado(banco, objeto.estado)]["central"]["pnd"] ? (i.pnd = i.estados[self.banco_estado(banco, objeto.estado)]["central"]["pnd"].real_contabil) : (i.pnd = 0.0.real_contabil)
            i.estados[self.banco_estado(banco, objeto.estado)]["central"]["pd"]  ? (i.pd =  i.estados[self.banco_estado(banco, objeto.estado)]["central"]["pd"].real_contabil)  : (i.pd = 0.0.real_contabil)
            array_de_retorone << i
          end
        else
          itens.each do |i|
            i.estados[self.banco_estado(banco, objeto.estado)]["pnd"] ? (i.pnd = i.estados[self.banco_estado(banco, objeto.estado)]["pnd"].real_contabil) : (i.pnd = 0.0.real_contabil)
            i.estados[self.banco_estado(banco, objeto.estado)]["pd"]  ? (i.pd =  i.estados[self.banco_estado(banco, objeto.estado)]["pd"].real_contabil)  : (i.pd = 0.0.real_contabil)
            array_de_retorone << i
          end
        end
        return array_de_retorone
      else
        return itens
      end
    else
      return []
    end
  end

  def self.buscar_itens_para_composicao_emp(objeto, usuario_logado, params)
    banco =   params[:banco]
    filtro =  params[:filtro]
    field =   params[:field]
    classe =  params[:classe]

    if classe == "Tempo Fixo"

      if field == "codigo"
        itens = Banco::Sicro3::Composicao.collection.aggregate([{ "$match" => { "codigo" => /#{filtro.sepp}/i, "tempo_fixo" => true } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
      else
        itens = Banco::Sicro3::Composicao.collection.aggregate([{ "$match" => { "descricao" => /#{filtro.sepp}/i, "tempo_fixo" => true } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
      end

    else

      if banco == "Emp"

        if field == "codigo"
          if classe == "insumo"
            itens = Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_codigo(filtro).asc(:descricao).limit(100)
          else
            itens = Banco::Emp::Composicao.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_codigo(filtro).asc(:descricao).limit(100)
          end
        else
          if params["classe"] == "insumo"
            itens = Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_descricao(filtro).asc(:descricao).limit(100)
          else
            itens = Banco::Emp::Composicao.da_empresa(usuario_logado.empresa_id).que_posso_ver(usuario_logado).buscar_por_descricao(filtro).asc(:descricao).limit(100)
          end
        end

      elsif banco == "undefined"

        itens = []

      else

        if field == "codigo"
          if classe == "insumo"
            itens = self.classe_insumo_do_banco(banco).collection.aggregate([{ "$match" => { "codigo" => /#{filtro.sepp}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
          else
            itens = self.classe_composicao_do_banco(banco).collection.aggregate([{ "$match" => { "codigo" => /#{filtro.sepp}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
          end
        else
          if classe == "insumo"
            itens = self.classe_insumo_do_banco(banco).collection.aggregate([{ "$match" => { "descricao" => /#{filtro.sepp}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
          else
            itens = self.classe_composicao_do_banco(banco).collection.aggregate([{ "$match" => { "descricao" => /#{filtro.sepp}/i } }, { "$unwind" => "$codigo" }, { "$group" => { "_id" => "$codigo", codigo: { "$last" => "$codigo" }, descricao: { "$last" => "$descricao" }, id: { "$last" => "$_id" }, tipo: { "$last" => "$tipo" }, unidade: { "$last" => "$unidade" }, data: { "$last" => "$data" }, estados: { "$last" => "$estados" } } }, { "$limit" => 100 }, { "$sort" => { data: 1 } }], :allow_disk_use => true)
          end
        end
        itens.each {|item| item["b"] = banco}

      end

    end

    array_de_retorone = []
    if banco == "Emp"
      itens.each {|i| self.buscar_itens_para_composicao_emp_add_pr(objeto, banco, array_de_retorone, i) if objeto.id != i.id}
    elsif banco == "SETOP"
      itens.each do |i|
        i["estados"][self.banco_estado(banco, objeto.estado)]["central"]["pnd"] ? (i.pnd = i["estados"][self.banco_estado(banco, objeto.estado)]["central"]["pnd"].real_contabil) : (i.pnd = 0.0.real_contabil)
        i["estados"][self.banco_estado(banco, objeto.estado)]["central"]["pd"]  ? (i.pd =  i["estados"][self.banco_estado(banco, objeto.estado)]["central"]["pd"].real_contabil)  : (i.pd = 0.0.real_contabil)
        array_de_retorone << i
      end
    else
      itens.each {|i| self.buscar_itens_para_composicao_emp_add_pr(objeto, banco, array_de_retorone, i)}
    end
    array_de_retorone
  end

  def self.buscar_itens_para_composicao_emp_add_pr(objeto, banco, array_de_retorone, i)
    if objeto.estado and i["estados"][objeto.estado]
      i["estados"][self.banco_estado(banco, objeto.estado)]["pnd"]  ? (i["pnd"] =   i["estados"][self.banco_estado(banco, objeto.estado)]["pnd"].real_contabil)   : (i["pnd"] =   0.0.real_contabil)
      i["estados"][self.banco_estado(banco, objeto.estado)]["pd"]   ? (i["pd"] =    i["estados"][self.banco_estado(banco, objeto.estado)]["pd"].real_contabil)    : (i["pd"] =    0.0.real_contabil)
      i["estados"][self.banco_estado(banco, objeto.estado)]["pndi"] ? (i["pndi"] =  i["estados"][self.banco_estado(banco, objeto.estado)]["pndi"].real_contabil)  : (i["pndi"] =  0.0.real_contabil)
      i["estados"][self.banco_estado(banco, objeto.estado)]["pdi"]  ? (i["pdi"] =   i["estados"][self.banco_estado(banco, objeto.estado)]["pdi"].real_contabil)   : (i["pdi"] =   0.0.real_contabil)
      array_de_retorone << i
    end
  end

  def self.autocompletar_data(objeto, params)
    if objeto.class == Banco::Emp::Composicao
      case params[:banco]
      when "ORSE"         then DATASORSE.first
      when "SEDOP"        then DATASSEDOP.first
      when "SEINFRA"      then VERSAOSSEINFRA.first
      when "SICRO2"       then DATASSICRO.first
      when "SICRO3"       then DATASSICRO3.first
      when "SETOP"        then DATASSETOP.first
      when "IOPES"        then DATASIOPES.first
      when "SIURB"        then DATASSIURB.first
      when "SIURB INFRA"  then DATASSIURBINFRA.first
      when "SUDECAP"      then DATASSUDECAP.first
      when "SBC"          then DATASSBC.first
      when "FDE"          then DATASFDE.first
      when "SCO"          then DATASSCO.first
      when "EMOP"         then DATASEMOP.first
      when "CPOS"         then DATASCPOS.first
      when "AGETOP CIVIL" then DATASAGETOPCIVIL.first
      when "CAEMA"        then DATASCAEMA.first
      when "EMBASA"       then DATASEMBASA.first
      when "CAERN"        then DATASCAERN.first
      else
        objeto.data
      end
    elsif objeto.class == Orc::Orcamento
      if params[:banco] == "Emp"
        objeto.bancos["SINAPI"]["data"]
      else
        objeto.bancos[params[:banco]]["data"]
      end
    end
  end
  # end Auto Completar

  def self.seinfra_grupos
    grupos = Banco::Seinfra::ComposicaoGrupo.all
    grupos.each do |grupo|
      grupo.codigo_2 = ""
      grupo.codigo.split(".").each do |nivel|
        nivel.size <= 10 ? (diferenca = 10 - nivel.size) : diferenca = 0
        grupo.codigo_2 << "#{"0" * (diferenca)}#{nivel}"
      end
    end
    grupos.sort! {|u,x| u.codigo_2 <=> x.codigo_2}
    html = ""
    grupos.each {|g| html << "<option value='#{g.codigo}'>#{g.codigo} - #{g.nome}</option>"}
    html
  end

  # Padrõs para Vários Bancos
  def self.classe_composicao_do_banco(banco)
    case banco
    when "SINAPI"       then Banco::Sinapi::Composicao
    when "SEDOP"        then Banco::Sedop::Composicao
    when "SEINFRA"      then Banco::Seinfra::Composicao
    when "SICRO2"       then Banco::Sicro::Composicao
    when "SICRO3"       then Banco::Sicro3::Composicao
    when "ORSE"         then Banco::Orse::Composicao
    when "SETOP"        then Banco::Setop::Composicao
    when "IOPES"        then Banco::Iopes::Composicao
    when "SIURB"        then Banco::Siurb::Composicao
    when "SIURB INFRA"  then Banco::SiurbInfra::Composicao
    when "SUDECAP"      then Banco::Sudecap::Composicao
    when "SBC"          then Banco::Sbc::Composicao
    when "FDE"          then Banco::Fde::Composicao
    when "SCO"          then Banco::Sco::Composicao
    when "EMOP"         then Banco::Emop::Composicao
    when "CPOS"         then Banco::Cpos::Composicao
    when "AGETOP CIVIL" then Banco::AgetopCivil::Composicao
    when "CAEMA"        then Banco::Caema::Composicao
    when "EMBASA"       then Banco::Embasa::Composicao      
    when "CAERN"        then Banco::Caern::Composicao
    when "Emp"          then Banco::Emp::Composicao
    end
  end

  def self.classe_insumo_do_banco(banco)
    case banco
    when "SINAPI"       then Banco::Sinapi::Insumo
    when "SEDOP"        then Banco::Sedop::Insumo
    when "SEINFRA"      then Banco::Seinfra::Insumo
    when "SICRO2"       then Banco::Sicro::Insumo
    when "SICRO3"       then Banco::Sicro3::Insumo
    when "ORSE"         then Banco::Orse::Insumo
    when "SETOP"        then Banco::Setop::Insumo
    when "IOPES"        then Banco::Iopes::Insumo
    when "SIURB"        then Banco::Siurb::Insumo
    when "SIURB INFRA"  then Banco::SiurbInfra::Insumo
    when "SUDECAP"      then Banco::Sudecap::Insumo
    when "SBC"          then Banco::Sbc::Insumo
    when "FDE"          then Banco::Fde::Insumo
    when "SCO"          then Banco::Sco::Insumo
    when "EMOP"         then Banco::Emop::Insumo
    when "CPOS"         then Banco::Cpos::Insumo
    when "AGETOP CIVIL" then Banco::AgetopCivil::Insumo
    when "CAEMA"        then Banco::Caema::Insumo
    when "EMBASA"       then Banco::Embasa::Insumo
    when "CAERN"        then Banco::Caern::Insumo
    when "Emp"          then Banco::Emp::Insumo
    end
  end

  def self.banco_estado(banco, estado_padrao)
    case banco
    when "ORSE"             then "SE"
    when "SEDOP"            then "PA"
    when "SEINFRA"          then "CE"
    when "SETOP"            then "MG"
    when "IOPES"            then "ES"
    when "SIURB"            then "SP"
    when "SIURB INFRA"      then "SP"
    when "SUDECAP"          then "MG"
    when "FDE"              then "SP"
    when "SCO"              then "RJ"
    when "EMOP"             then "RJ"
    when "CPOS"             then "SP"
    when "AGETOP CIVIL"     then "GO"
    when "CAEMA"            then "MA"
    when "EMBASA"           then "BA"
    when "CAERN"            then "RN"
    else
      estado_padrao
    end
  end

  def self.data_do_objeto(objeto, banco)
    if objeto.class == Banco::Emp::Composicao
      case banco
      when "ORSE"         then DATASORSE.first
      when "SEDOP"        then DATASSEDOP.first
      when "SEINFRA"      then VERSAOSSEINFRA.first
      when "SICRO2"       then DATASSICRO.first
      when "SICRO3"       then DATASSICRO3.first
      when "SETOP"        then DATASSETOP.first
      when "IOPES"        then DATASIOPES.first
      when "SIURB"        then DATASSIURB.first
      when "SIURB INFRA"  then DATASSIURBINFRA.first
      when "SUDECAP"      then DATASSUDECAP.first
      when "SBC"          then DATASSBC.first
      when "FDE"          then DATASFDE.first
      when "SCO"          then DATASSCO.first
      when "EMOP"         then DATASEMOP.first
      when "CPOS"         then DATASCPOS.first
      when "AGETOP CIVIL" then DATASAGETOPCIVIL.first
      when "CAEMA"        then DATASCAEMA.first
      when "EMBASA"       then DATASEMBASA.first
      when "CAERN"        then DATASCAERN.first
      else
        objeto.data
      end
    elsif objeto.class == Orc::Orcamento
      if params[:banco] == "Emp"
        objeto.bancos["SINAPI"]["data"]
      else
        objeto.bancos[params[:banco]]["data"]
      end
    end
  end

  def self.banco_lista_de_datas(banco)
    case banco
    when "SINAPI"       then DATASSINAPI
    when "ORSE"         then DATASORSE
    when "SEDOP"        then DATASSEDOP
    when "SEINFRA"      then VERSAOSSEINFRA
    when "SICRO2"       then DATASSICRO
    when "SICRO3"       then DATASSICRO3
    when "SETOP"        then DATASSETOP
    when "IOPES"        then DATASIOPES
    when "SIURB"        then DATASSIURB
    when "SIURB INFRA"  then DATASSIURBINFRA
    when "SUDECAP"      then DATASSUDECAP
    when "SBC"          then DATASSBC
    when "FDE"          then DATASFDE
    when "SCO"          then DATASSCO
    when "EMOP"         then DATASEMOP
    when "CPOS"         then DATASCPOS
    when "AGETOP CIVIL" then DATASAGETOPCIVIL
    when "CAEMA"        then DATASCAEMA
    when "EMBASA"       then DATASEMBASA
    when "CAERN"        then DATASCAERN
    else
      ""
    end
  end

  def self.banco_lista_de_tipos_de_insumos(banco)
    case banco
    when "SINAPI"       then TIPOSDEINSUMOS
    when "ORSE"         then TIPOSDEINSUMOSORSE
    when "SEDOP"        then TIPOSDEINSUMOSSICRO
    when "SEINFRA"      then TIPOSDEINSUMOS
    when "SICRO2"       then TIPOSDEINSUMOSSICRO
    when "SICRO3"       then TIPOSDEINSUMOSSICRO
    when "SETOP"        then TIPOSDEINSUMOSORSE
    when "IOPES"        then TIPOSDEINSUMOSSICRO
    when "SIURB"        then TIPOSDEINSUMOSSICRO
    when "SIURB INFRA"  then TIPOSDEINSUMOSSICRO
    when "SUDECAP"      then TIPOSDEINSUMOSSICRO
    when "SBC"          then TIPOSDEINSUMOSSBC
    when "FDE"          then TIPOSDEINSUMOSSICRO
    when "SCO"          then TIPOSDEINSUMOSSICRO
    when "EMOP"         then TIPOSDEINSUMOSSBC
    when "CPOS"         then TIPOSDEINSUMOSSBC
    when "AGETOP CIVIL" then TIPOSDEINSUMOSSBC
    when "CAEMA"        then TIPOSDEINSUMOSORSE
    when "EMBASA"       then TIPOSDEINSUMOSORSE
    when "CAERN"        then TIPOSDEINSUMOSORSE
    else
      ""
    end
  end

  def self.atalho_composicao(banco)
    case banco
    when "SINAPI"   then "Ctrl + Alt + 1"
    when "Emp"      then "Ctrl + Alt + 2"
    when "ORSE"     then "Ctrl + Alt + 3"
    when "SEDOP"    then "Ctrl + Alt + 4"
    when "SEINFRA"  then "Ctrl + Alt + 5"
    when "SICRO2"   then "Ctrl + Alt + 6"
    when "SETOP"    then "Ctrl + Alt + 7"
    when "IOPES"    then "Ctrl + Alt + 8"
    when "SIURB"    then "Ctrl + Alt + 9"
    when "SUDECAP"  then "Ctrl + Alt + 0"
    else
      ""
    end
  end

  def self.atalho_insumo(banco)
    case banco
    when "SINAPI"   then "Ctrl + Alt + q"
    when "Emp"      then "Ctrl + Alt + w"
    when "ORSE"     then "Ctrl + Alt + e"
    when "SEDOP"    then "Ctrl + Alt + r"
    when "SEINFRA"  then "Ctrl + Alt + t"
    when "SICRO2"   then "Ctrl + Alt + y"
    when "SETOP"    then "Ctrl + Alt + u"
    when "IOPES"    then "Ctrl + Alt + i"
    when "SIURB"    then "Ctrl + Alt + o"
    when "SUDECAP"  then "Ctrl + Alt + p"
    else
      ""
    end
  end

  def self.pr_unitario_para_lista_de_busca(item, orcamento, estado)
    desonerado = orcamento.desonerado
    if item.class == Banco::Sicro::Insumo
      pr_d = (desonerado ? "d" : "nd")
      if item.tipo == 1
        item.estados[estado][pr_d]["operativo"].round(4).trocar_ponto_por_virgula
      elsif item.tipo == 3
        item.estados[estado][pr_d]["pr_un"].round(4).trocar_ponto_por_virgula
      elsif item.tipo == 4
        item.estados[estado]["pr_un"].round(4).trocar_ponto_por_virgula
      end
    elsif item.class == Banco::Sicro::Composicao
      pr_d = (desonerado ? "d" : "nd")
      item.estados[estado][pr_d]["cud"].round(2).trocar_ponto_por_virgula
    elsif (item.class == Banco::Setop::Composicao) or (item.class == Banco::Setop::Insumo)
      regiao =  orcamento.bancos["SETOP"]["regiao"]
      pr_d =    (desonerado ? "pd" : "pnd")
      item.estados["MG"][regiao] ? item.estados["MG"][regiao][pr_d].round(2).trocar_ponto_por_virgula : "sem valor para #{ regiao.setop_regioes_em_texto }"
    else
      pr_d = (desonerado ? "pd" : "pnd")
      item["estados"][estado] ? item["estados"][estado][pr_d].round(2).trocar_ponto_por_virgula : "sem valor para #{ estado }"
    end
  end

  def self.quantidade_de_composicoes
    quantidade = 0
    TODASASBASES.each {|base| quantidade += self.classe_composicao_do_banco(base).da_data(self.banco_lista_de_datas(base).first).count}
    quantidade
  end
  # end Padrõs para Vários Bancos
end
