class Banco::Emp::Composicao
  include Banco::Emp::Comum

  field :tipo,				        type: String
  field :data,                type: String
  field :estado,              type: String
  field :regiao_setop,        type: String
  field :regiao_sbc,          type: String
  field :mao_de_obra,         type: Boolean,  default: false
  field :composicoes,         type: Array,    default: [] # [{ b: String, id ou c: BSON::ObjectId ou String, q: Float }]
  field :insumos,			        type: Array,    default: [] # [{ b: String, id ou c: BSON::ObjectId ou String, q: Float }]
  field :valor_3_por_cento,   type: Float,    default: 0.0
  field :valor_5_por_cento,   type: Float,    default: 0.0

  attr_accessor :quant_itens
  attr_accessor :composicoes_auxiliares_provisorias
  attr_accessor :insumos_provisorios
  attr_accessor :quantidade
  attr_accessor :pnd
  attr_accessor :pd

  

  # Escopos
  def self.que_posso_ver(usuario)
    if usuario.permissao.composicao_de_outro_setor >= 1
      where(empresa_id: usuario.empresa_id)
    elsif usuario.permissao.composicao_do_setor >= 1
      where(setor_id: usuario.setor_id)
    elsif usuario.permissao.composicao_propio >= 1
      where(usuario_id: usuario.id)
    else
      where(usuario_id: "0")
    end
  end

  def self.que_posso_editar(usuario)
    if usuario.permissao.composicao_de_outro_setor >= 2
      where(empresa_id: usuario.empresa_id)
    elsif usuario.permissao.composicao_do_setor >= 2
      where(setor_id: usuario.setor_id)
    elsif usuario.permissao.composicao_propio >= 2
      where(usuario_id: usuario.id)
    else
      where(usuario_id: "0")
    end
  end
  # / Escopos

  def add_subitem(params) # versão 3
    quantidade =          params[:quantidade].mudar_virgula_para_ponto.to_f.round(7)
    classe =              params[:classe]
    id_do_item =          params[:id_do_item]
    banco =               params[:banco]
    tipo =                params[:tipo].to_i if params[:tipo]
    
    if classe == "insumo"
      if banco == "Emp"
        item = Banco::Emp::Insumo.find(id_do_item)
      else
        item = Banco::Sbc::Insumo.find(id_do_item)
      end
    else
      if banco == "Emp"
        item = Banco::Emp::Composicao.find(id_do_item)
      else
        item = Banco::Sbc::Composicao.find(id_do_item)
      end
    end

    #operativa =           params[:operativa].mudar_virgula_para_ponto.to_f if params[:operativa]
    #improdutiva =         params[:improdutiva].mudar_virgula_para_ponto.to_f if params[:improdutiva]
    #ref_tempo_fixo =      params[:ref_tempo_fixo]

    # item = (classe == "insumo" ? Banco::Busca.classe_insumo_do_banco(banco).com_id(id_do_item) : Banco::Busca.classe_composicao_do_banco(banco).com_id(id_do_item))

    if item
      dados = {"b" => banco, "c" => item.codigo, "q" => quantidade}
      dados = dados.merge({"t" => tipo})                          if classe == "insumo"
      dados = dados.merge({"o" => operativa, "i" => improdutiva}) if classe == "insumo" and self.modelo_sicro3 and tipo == 1
      dados = dados.merge({"id" => item.id.to_s})                 if banco == "Emp"
      dados = dados.merge({"ref" => ref_tempo_fixo})              if classe == "Tempo Fixo"
    end

    if self.modelo_sicro3
      if classe == "insumo"
        novo_item = self.sicro3_insumos.new(dados)
      elsif classe == "composicao"
        novo_item = self.sicro3_composicoes.new(dados)
      elsif classe == "Tempo Fixo"
        novo_item = self.sicro3_tempos_fixos.new(dados)
      end
    else
      if classe == "insumo"
        self.insumos << dados
        contador = self.insumos.count - 1
      elsif classe == "composicao"
        self.composicoes << dados
        contador = self.composicoes.count - 1
      end
    end

    self.save
    self.set_precos

    # case banco
    # when "SETOP"
    #   pnd = item.estados["MG"]["central"]["pnd"]
    #   pd  = item.estados["MG"]["central"]["pd"]
    # when "Emp"
    #   pnd = item.estados[self.estado]["pnd"]
    #   pd  = item.estados[self.estado]["pd"]
    # when "SICRO2"
    #   if classe == "insumo"
    #     if tipo == 1
    #       pnd = item.estados[self.estado]["nd"]["operativo"]
    #       pd  = item.estados[self.estado]["d"]["operativo"]
    #     elsif tipo == 3
    #       pnd = item.estados[self.estado]["nd"]["pr_un"]
    #       pd  = item.estados[self.estado]["d"]["pr_un"]
    #     elsif tipo == 4
    #       pnd = item.estados[self.estado]["pr_un"]
    #       pd  = pnd
    #     end
    #   elsif classe == "composicao"
    #     pnd = item.estados[self.estado]["nd"]["cud"]
    #     pd  = item.estados[self.estado]["d"]["cud"]
    #   end
    # when "undefined"
    # else
    #   pnd = item.estados[Banco::Busca.banco_estado(params[:banco], self.estado)]["pnd"]
    #   pd  = item.estados[Banco::Busca.banco_estado(params[:banco], self.estado)]["pd"]
    # end

    # pnd_total = pnd * quantidade
    # pd_total =  pd * quantidade

    # if self.modelo_sicro3
    #   return self.dados_para_retorno_em_json_sicro.merge({q: quantidade, pnd: pnd, pd: pd, pnd_total: pnd_total, pd_total: pd_total})
    # else
    #   return {q: quantidade, pnd: pnd, pd: pd, pnd_total: pnd_total, pd_total: pd_total, contador: contador}
    # end
  end

  def excluir_subitem(params)
    # if self.modelo_sicro3
    #   if params[:classe] == "composicao"
    #     self.sicro3_composicoes.find(params[:id_intermediario]).destroy
    #   elsif params[:classe] == "insumo"
    #     self.sicro3_insumos.find(params[:id_intermediario]).destroy
    #   elsif params[:classe] == "Tempo Fixo"
    #     self.sicro3_tempos_fixos.find(params[:id_intermediario]).destroy
    #   end
    #else
    #  if params[:classe] == "composicao"
    #    self.composicoes.delete_at(params[:contador].to_i)
    #  elsif params[:classe] == "insumo"
    #    self.insumos.delete_at(params[:contador].to_i)
    #  end
    #end
    
    

    if params[:classe] == "composicao"
     self.composicoes.delete_at(params[:contador].to_i)
    elsif params[:classe] == "insumo"
     self.insumos.delete_at(params[:contador].to_i)
    end    
    self.set_precos
    

    #self.dados_para_retorno_em_json_sicro
  end

  def criar_insumo(params)
    insumo = Banco::Emp::Insumo.new
    insumo.empresa_id =     params[:empresa_id]
    insumo.setor_id =       params[:setor_id]
    insumo.usuario_id =     params[:usuario_id]
    insumo.codigo =         params[:codigo]
    insumo.descricao =      params[:descricao]
    insumo.tipo =           params[:tipo]
    insumo.unidade =        params[:unidade]
    insumo.estado =         self.estado

    insumo.pnd =            params[:pnd].mudar_virgula_para_ponto.to_f.round(4)
    insumo.pd =             params[:pd].mudar_virgula_para_ponto.to_f.round(4)
    insumo.pndi =           params[:pndi].mudar_virgula_para_ponto.to_f.round(4)
    insumo.pdi =            params[:pdi].mudar_virgula_para_ponto.to_f.round(4)
    insumo.save
    self.insumos << {b: "Emp", id: insumo.id.to_s, q: params[:quantidade].mudar_virgula_para_ponto.to_f}
    self.save
  end

  def set_descricoes_nos_itens
    self.composicoes.each do |x|
      case x["b"]
      when "SINAPI" then  ca = Banco::Sinapi::Composicao.com_codigo(x["c"]).da_data(self.data).first
      when "Emp" then     ca = Banco::Emp::Composicao.where(id: x["id"]).first
      end
      if ca
        x["id"] = ca.id.to_s
        x["c"] =  ca.codigo
        x["d"] =  ca.descricao
        x["t"] =  ca.tipo
        x["un"] = ca.unidade
      end
    end
    self.insumos.each do |x|
      case x["b"]
      when "SINAPI" then  i = Banco::Sinapi::Insumo.com_codigo(x["c"]).da_data(self.data).first
      when "Emp" then     i = Banco::Emp::Insumo.where(id: x["id"]).first
      end
      if i
        x["id"] = i.id.to_s
        x["c"] =  i.codigo
        x["d"] =  i.descricao
        x["t"] =  i.tipo
        x["un"] = i.unidade
      end
    end
  end

  def update_quantidade(params)
    if self.modelo_sicro3
      self.sicro3_insumos.each {|x| x.q = params["insumo_#{x.id}"].mudar_virgula_para_ponto.to_f.round(7) if params["insumo_#{x.id}"]}
      self.sicro3_composicoes.each {|x| x.q = params["composicao_#{x.id}"].mudar_virgula_para_ponto.to_f.round(7) if params["composicao_#{x.id}"]}
      self.sicro3_tempos_fixos.each {|x| x.q = params["tempo_fixo_#{x.id}"].mudar_virgula_para_ponto.to_f.round(7) if params["tempo_fixo_#{x.id}"]}
      self.set_precos
      return self.dados_para_retorno_em_json_sicro
    else
      quantidade = params[:quantidade].mudar_virgula_para_ponto.to_f
      if params[:classe] == "composicao"
        self.composicoes[params[:contador].to_i]["q"] = quantidade
      elsif params[:classe] == "insumo"
        self.insumos[params[:contador].to_i]["q"] = quantidade
      end
      self.save
    end
  end



  # Calculo de preço ===================================================================================================
  def set_precos
    if self.modelo_sicro3
      self.modelo_sicro3_set_precos
    else
      self.estados = {}
      ESTADOS.each {|estado| self.estados[estado] = {"pnd" => 0.0, "pd" => 0.0}}
      self.set_insumos_e_composicoes
      self.insumos_provisorios.each {|ip| self.set_precos_dos_estados(ip)}
      self.composicoes_auxiliares_provisorias.each do |cp|
        cp.set_precos if cp["b"] == "Emp"
        self.set_precos_dos_estados(cp)
      end
      self.save
    end
  end

  def set_insumos_e_composicoes
    self.composicoes_auxiliares_provisorias = []
    self.insumos_provisorios = []

    self.composicoes.each do |x|
      if x["b"] == "Emp"
        c = Banco::Emp::Composicao.where(id: x["id"]).first
      else
        c = Banco::Busca.classe_composicao_do_banco(x["b"]).da_data(Banco::Busca.data_do_objeto(self, x["b"])).com_codigo(x["c"]).first
      end
      #c["banco"] = x["b"]
      if c
        c.quantidade = x["q"]
        c["b"] = x["b"]
        self.composicoes_auxiliares_provisorias << c
      end
    end
    self.insumos.each do |x|
      if x["b"] == "Emp"
        i = Banco::Emp::Insumo.find(x["id"])
      else
         i = Banco::Busca.classe_insumo_do_banco(x["b"]).da_data(Banco::Busca.data_do_objeto(self, x["b"])).com_codigo(x["c"]).first
      end
      #i["banco"] = x["b"]
      if i
        i.quantidade = x["q"]
        i["b"] = x["b"]
        self.insumos_provisorios << i
      end
    end
  end

  def set_precos_dos_estados(item)
    ESTADOS.each do |estado|
      if item.estados[Banco::Busca.banco_estado(item["b"], estado)]
        if item["b"] == "SETOP"
          self.estados[estado]["pnd"] += (item.estados[Banco::Busca.banco_estado(item["b"], "MG")][self.regiao_da_setop]["pnd"].to_f * item.quantidade.to_f.round(7))
          self.estados[estado]["pd"] += (item.estados[Banco::Busca.banco_estado(item["b"], "MG")][self.regiao_da_setop]["pd"].to_f * item.quantidade.to_f.round(7))
        elsif item["b"] == "SICRO2"
          if item["tipo"] == 1
            self.estados[estado]["pnd"] += (item.estados[estado]["nd"]["operativo"].to_f * item.quantidade.to_f.round(7))
            self.estados[estado]["pd"] += (item.estados[estado]["d"]["operativo"].to_f * item.quantidade.to_f.round(7))
          elsif item["tipo"] == 3
            self.estados[estado]["pnd"] += (item.estados[estado]["nd"]["pr_un"].to_f * item.quantidade.to_f.round(7))
            self.estados[estado]["pd"] += (item.estados[estado]["d"]["pr_un"].to_f * item.quantidade.to_f.round(7))
          elsif item["tipo"] == 4
            self.estados[estado]["pnd"] += (item.estados[estado]["pr_un"].to_f * item.quantidade.to_f.round(7))
            self.estados[estado]["pd"] += (item.estados[estado]["pr_un"].to_f * item.quantidade.to_f.round(7))
          else
            self.estados[estado]["pnd"] += (item.estados[estado]["nd"]["cud"].to_f * item.quantidade.to_f.round(7))
            self.estados[estado]["pd"] += (item.estados[estado]["d"]["cud"].to_f * item.quantidade.to_f.round(7))
          end
        else
          self.estados[estado]["pnd"] += (item.estados[Banco::Busca.banco_estado(item["b"], estado)]["pnd"].to_f * item.quantidade.to_f.round(7))
          self.estados[estado]["pd"] += (item.estados[Banco::Busca.banco_estado(item["b"], estado)]["pd"].to_f * item.quantidade.to_f.round(7))
        end
      end
    end
  end
  # end Calculo de preço -----------------------------------------------------------------------------------------------

  def copiar(usuario, params)
    new_c =             self.clone
    new_c.empresa_id =  usuario.empresa_id
    new_c.setor_id =    usuario.setor_id
    new_c.usuario_id =  usuario.id
    new_c.codigo =      new_c.sugestao_de_codigo(usuario.empresa_id)
    new_c.descricao =   params["descricao"]
    new_c.save
    new_c
  end

  def tipo_por_extenso
    self.tipo.tipo_de_composicao_sinapi_por_extenso
  end

  def regiao_da_setop
    if self.regiao_setop
      return self.regiao_setop
    else
      return "central"
    end
  end

  # Modelo Sicro3
  field :modelo_sicro3,       type: Boolean,  default: false
  field :producao_da_equipe,  type: Float,    default: 1.0
  field :fic,                 type: Float

  attr_accessor :sicro3_tempos_fixos_provisorios
  attr_accessor :sicro3_equipamentos_provisorios
  attr_accessor :sicro3_maos_de_obra_provisorias
  attr_accessor :sicro3_materiais_provisorios
  attr_accessor :sicro3_composicoes_provisorias
  attr_accessor :sicro3_outros_insumos

  embeds_many :sicro3_composicoes,  class_name: "Banco::Emp::Item::Composicao"
  embeds_many :sicro3_insumos,      class_name: "Banco::Emp::Item::Insumo"
  embeds_many :sicro3_tempos_fixos, class_name: "Banco::Emp::Item::TempoFixo"

  def modelo_sicro3_set_precos
    ESTADOS.each do |estado|
      self.estados[estado] = {}
      self.estados[estado]["pnd"]       = 0.0
      self.estados[estado]["pd"]        = 0.0
      self.estados[estado]["ch_de_eq"]  = 0.0
      self.estados[estado]["ch_da_mo"]  = 0.0
      self.estados[estado]["che"]       = 0.0
    end
    self.modelo_sicro3_set_insumos_e_composicoes
    self.modelo_sicro3_set_custos_horarios_de_execucao
    self.modelo_sicro3_set_custos_unitarios_diretos
    ESTADOS.each do |estado|
      self.estados[estado]["pnd"] = self.estados[estado]["pnd"].round(2)
      self.estados[estado]["pd"] =  self.estados[estado]["pd"].round(2)
    end
    puts "\n\n#{self.sicro3_tempos_fixos_provisorios.count}\n\n"
  
  end

  def modelo_sicro3_set_insumos_e_composicoes
    self.sicro3_equipamentos_provisorios = []
    self.sicro3_maos_de_obra_provisorias = []
    self.sicro3_materiais_provisorios    = []
    self.sicro3_composicoes_provisorias  = []
    self.sicro3_tempos_fixos_provisorios = []
    self.sicro3_outros_insumos = []
    self.sicro3_insumos.each do |x|
      if x["b"] == "Emp"
        i = Banco::Emp::Insumo.where(id: x["id"]).first
      else
        i = Banco::Busca.classe_insumo_do_banco(x["b"]).com_codigo(x["c"]).asc(:data).last
      end
      i["b"] = x["b"]
      if i
        i.id_intermediario = x.id
        i.quantidade = x.q
        case x.t
        when 1
          i.utilizacao_operativa = x.o.to_f
          i.utilizacao_improdutiva = x.i.to_f
          self.sicro3_equipamentos_provisorios << i
        when 3 then self.sicro3_maos_de_obra_provisorias << i
        when 4 then self.sicro3_materiais_provisorios << i
        else
          self.sicro3_outros_insumos << i
        end
      end
    end
    self.sicro3_composicoes.each do |x|
      if x["b"] == "Emp"
        c = Banco::Emp::Composicao.where(id: x["id"]).first
      else
        c = Banco::Busca.classe_composicao_do_banco(x["b"]).com_codigo(x["c"]).asc(:data).last
      end
      c["b"] = x["b"]
      if c
        # x["id"] = c.id
        c.id_intermediario = x.id
        c.quantidade = x["q"]
        self.sicro3_composicoes_provisorias << c
      end
    end
    self.sicro3_tempos_fixos.each do |x|
      puts x["ref"]
      if t = Banco::Sicro3::Composicao.com_codigo(x["c"]).asc(:data).last
        x["b"] = "SICRO3" unless x["b"]
        if m = Banco::Busca.classe_insumo_do_banco(x["b"]).com_codigo(x["ref"]).asc(:data).last || Banco::Busca.classe_composicao_do_banco(x["b"]).com_codigo(x["ref"]).asc(:data).last
          t.quantidade = x["q"]
          t.ref = x["ref"]
          t.id_intermediario = x.id
          t.descricao_completa = "#{m.descricao} - #{t.descricao}"
          self.sicro3_tempos_fixos_provisorios << t
        end
      end
    end
  end

  def modelo_sicro3_set_custos_horarios_de_execucao
    self.sicro3_equipamentos_provisorios.each do |ep|
      ESTADOS.each do |estado|
        if ep.estados[estado]
          custo_nao_desonerado_operacional_operativo = (ep.quantidade * ep.utilizacao_operativa * (ep.is_a?(Banco::Sicro::Insumo) ? ep.estados[estado]["nd"]["operativo"] : ep.estados[estado]["pnd"])).round(4)
          custo_nao_desonerado_operacional_improdutivo = (ep.quantidade * ep.utilizacao_improdutiva * (ep.is_a?(Banco::Sicro::Insumo) ? ep.estados[estado]["nd"]["improdutivo"] : ep.estados[estado]["pndi"])).round(4)
          custo_horario_nao_desonerado = (custo_nao_desonerado_operacional_operativo + custo_nao_desonerado_operacional_improdutivo).round(4)
          self.estados[estado]["ch_de_eq"] += custo_horario_nao_desonerado
        end
      end
    end
    self.sicro3_maos_de_obra_provisorias.each do |mo|
      ESTADOS.each do |estado|
        if mo.estados[estado]
          self.estados[estado]["ch_da_mo"] += (mo.quantidade * (mo.is_a?(Banco::Sicro::Insumo) ? mo.estados[estado]["nd"]["pr_un"] : mo.estados[estado]["pnd"])).round(4)
        end
      end
    end
    ESTADOS.each { |estado| self.estados[estado]["che"] = self.estados[estado]["ch_da_mo"] + self.estados[estado]["ch_de_eq"] }
  end

  def modelo_sicro3_set_custos_unitarios_diretos
    ESTADOS.each do |estado|
      self.estados[estado]["pnd"]  += self.estados[estado]["che"] / self.producao_da_equipe
      self.estados[estado]["pnd"]  += (self.estados[estado]["pnd"] * self.fic).round(4) if self.fic
    end
    self.sicro3_materiais_provisorios.each { |m| set_precos_dos_estados(m) }
    self.sicro3_composicoes_provisorias.each { |cp| cp.set_precos; set_precos_dos_estados(cp) }
    self.sicro3_tempos_fixos_provisorios.each { |cp| cp.set_precos; set_precos_dos_estados(cp) }
    self.sicro3_outros_insumos.each { |i| set_precos_dos_estados(i) }
  end

  def dados_para_retorno_em_json_sicro()
    dados = {
      self_pr_un: self.estados[self.estado]["pnd"],
      ch_de_eq: self.estados[self.estado]["ch_de_eq"].round(4),
      ch_da_mo: self.estados[self.estado]["ch_da_mo"].round(4),
      che: self.estados[self.estado]["che"].round(4),
      cue: (self.estados[self.estado]["che"] / self.producao_da_equipe).round(4)
    }
    
    # Equipamentos
    equipamentos = []
    self.sicro3_equipamentos_provisorios.each do |x|
      custo_nao_desonerado_operacional_operativo = (x.quantidade * x.utilizacao_operativa * x.estados[estado]["pnd"])
      custo_nao_desonerado_operacional_improdutivo = (x.quantidade * x.utilizacao_improdutiva * x.estados[estado]["pndi"])
      custo_horario_nao_desonerado = (custo_nao_desonerado_operacional_operativo + custo_nao_desonerado_operacional_improdutivo).round(4)
      equipamentos << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({equipamentos: equipamentos})

    # Mãos de Obra
    maos_de_obra = []
    self.sicro3_maos_de_obra_provisorias.each do |x|
      custo_horario_nao_desonerado = (x.quantidade * x.estados[estado]["pnd"]).round(4)
      maos_de_obra << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({maos_de_obra: maos_de_obra})

    # Materias
    materiais = []
    custo_total_do_material = 0.0
    self.sicro3_materiais_provisorios.each do |x|
      custo_horario_nao_desonerado = (x.quantidade * x.estados[estado]["pnd"]).round(4)
      custo_total_do_material += custo_horario_nao_desonerado
      materiais << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({materiais: materiais, custo_total_do_material: custo_total_do_material})

    # Composições
    composicoes = []
    custo_total_das_atividades = 0.0
    self.sicro3_composicoes_provisorias.each do |x|
      custo_horario_nao_desonerado = (x.quantidade * x.estados[estado]["pnd"]).round(4)
      custo_total_das_atividades += custo_horario_nao_desonerado
      composicoes << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({composicoes: composicoes, custo_total_das_atividades: custo_total_das_atividades})

    # Tempos Fixos
    tempos_fixos = []
    custo_total_do_tempos_fixos = 0.0
    self.sicro3_tempos_fixos_provisorios.each do |x|
      custo_horario_nao_desonerado = (x.quantidade * x.estados[estado]["pnd"]).round(4)
      custo_total_do_tempos_fixos += custo_horario_nao_desonerado
      tempos_fixos << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({tempos_fixos: tempos_fixos, custo_total_do_tempos_fixos: custo_total_do_tempos_fixos})

    # Outros Insumos
    outros_tipos = []
    custo_total_de_outros_tipos = 0.0
    self.sicro3_outros_insumos.each do |x|
      custo_horario_nao_desonerado = (x.quantidade * x.estados[estado]["pnd"]).round(4)
      custo_total_de_outros_tipos += custo_horario_nao_desonerado
      outros_tipos << {id: x.id_intermediario.to_s, q: x.quantidade, pnd_total: custo_horario_nao_desonerado}
    end
    dados = dados.merge({outros_tipos: outros_tipos, custo_total_de_outros_tipos: custo_total_de_outros_tipos})

    dados
  end
  # End Modelo Sicro3
end
