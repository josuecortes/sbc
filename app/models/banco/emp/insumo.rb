class Banco::Emp::Insumo
  include Banco::Emp::Comum

  # se padrao_sicro e tipo equipamento
  #   field :estados => { uf: {pnd: Float, pd: Float, pndi: Float, pdi: Float }

  field :tipo,          type: Integer
  field :padrao_sicro,  type: Boolean,  default: false
  field :observacao,    type: String

  attr_accessor :estado
  attr_accessor :pnd
  attr_accessor :pd
  # attr_accessor :pndo
  # attr_accessor :pdo
  attr_accessor :pndi
  attr_accessor :pdi
  attr_accessor :valor
  attr_accessor :quantidade

  attr_accessor :dados_insumo

  # Escopos
  def self.que_posso_ver(usuario)
    if usuario.permissao.insumo_de_outro_setor >= 1
      where(empresa_id: usuario.empresa_id)
    elsif usuario.permissao.insumo_do_setor >= 1
      where(setor_id: usuario.setor_id)
    elsif usuario.permissao.insumo_propio >= 1
      where(user_id: usuario.id)
    else
      where(user_id: "0")
    end
  end

  def self.que_posso_editar(usuario)
    if usuario.permissao.insumo_de_outro_setor >= 2
      where(empresa_id: usuario.empresa_id)
    elsif usuario.permissao.insumo_do_setor >= 2
      where(setor_id: usuario.setor_id)
    elsif usuario.permissao.insumo_propio >= 2
      where(usuario_id: usuario.id)
    else
      where(usuario_id: "0")
    end
  end
  # / Escopos

  before_save :set_estado
  # before_save :update_precos_das_franquicas

  def set_estado
    unless self.created_at
      self.estados = {}
      self.pd =    self.pnd if self.pd == 0.0
      self.pndi =  self.pnd if self.pndi == 0.0
      self.pdi =   self.pd  if self.pdi == 0.0
      self.estados[self.estado] = {"pnd" => self.pnd, "pd" => self.pd, "pndi" => self.pndi, "pdi" => self.pdi}
    end
    true
  end

  # def update_precos_das_franquicas
  #   if self.tipo == 8
  #     estado_base = self.usuario.end_estado
  #     variacoes = self.variacao_de_precos_de_mao_de_obra
  #     pnd_base = self.estados[estado_base]["pnd"]
  #     pd_base = self.estados[estado_base]["pd"]
  #     ESTADOS.each {|e| self.estados[e] = {"pnd" => (pnd_base * variacoes[e]).round(2), "pd" => (pd_base * variacoes[e]).round(2)} if estado_base != e}
  #   end
  #   true
  # end

  def variacao_de_precos_de_mao_de_obra
    estado_base = self.usuario.end_estado
    valor_total = 0.0
    variacoes = {}
    insumos_de_referincia = []
    
    ["00004750", "00006111", "00004069", "00034780", "00000242"].each {|codigo| insumos_de_referincia << Banco::Sinapi::Insumo.da_data(DATASSINAPI.first).com_codigo(codigo).first}    
    insumos_de_referincia.each {|i| valor_total += i.estados[estado_base]["pnd"]}
    valor_base = (valor_total.round(2) / 5)

    ESTADOS.each do |estado|
      if estado_base != estado
        valor_total = 0.0
        insumos_de_referincia.each {|i| valor_total += i.estados[estado]["pnd"]}
        valor_medio_do_estado = (valor_total.round(2) / 5)
        variacao = valor_medio_do_estado / valor_base
        variacoes[estado] = variacao
      end
    end
    
    variacoes
  end

  def self.update_valores(usuario_logado, params)
    Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).each do |insumo|
      unless insumo.tipo == 8
        insumo.estados.each do |estado| 

          puts estado
          puts " ---"
          puts params 
          puts " ---"

          params["pnd_#{insumo.id.to_s}_#{estado.first}"]   ? (pnd = params["pnd_#{insumo.id.to_s}_#{estado.first}"].mudar_virgula_para_ponto.to_f.round(4))    : (pnd = 0.0)
          params["pd_#{insumo.id.to_s}_#{estado.first}"]    ? (pd = params["pd_#{insumo.id.to_s}_#{estado.first}"].mudar_virgula_para_ponto.to_f.round(4))      : (pd = 0.0)
          params["pndi_#{insumo.id.to_s}_#{estado.first}"]  ? (pndi = params["pndi_#{insumo.id.to_s}_#{estado.first}"].mudar_virgula_para_ponto.to_f.round(4))  : (pndi = 0.0)
          params["pdi_#{insumo.id.to_s}_#{estado.first}"]   ? (pdi = params["pdi_#{insumo.id.to_s}_#{estado.first}"].mudar_virgula_para_ponto.to_f.round(4))    : (pdi = 0.0)
          pd =    pnd if pd == 0.0
          pndi =  pnd if pndi == 0.0
          pdi =   pd if pdi == 0.0
          insumo.estados[estado.first] = {"pnd" => pnd, "pd" => pd, "pndi" => pndi, "pdi" => pdi}
        end
        insumo.atualizar_precos_das_composicoes if insumo.save!
      end
    end
  end

  # def self.updates_valores_das_franquias(usuario_logado, params)
  #   variacoes = Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).do_tipo(8).asc(:codigo).first.variacao_de_precos_de_mao_de_obra
  #   estado_base = usuario_logado.end_estado
  #   Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).do_tipo(8).asc(:codigo).each do |insumo|
  #     insumo.estados[estado_base]["pnd"] = params["pnd_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(2)
  #     insumo.estados[estado_base]["pd"] = params["pd_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(2)
  #     pnd_base = insumo.estados[estado_base]["pnd"]
  #     pd_base = insumo.estados[estado_base]["pd"]
  #     ESTADOS.each {|e| insumo.estados[e] = {"pnd" => (pnd_base * variacoes[e]).round(2), "pd" => (pd_base * variacoes[e]).round(2)} if estado_base != e}
  #     insumo.save
  #   end
  # end

  def self.update_valores_de_um_estado(usuario_logado, params)
    Banco::Emp::Insumo.da_empresa(usuario_logado.empresa_id).que_posso_editar(usuario_logado).each do |insumo|
      unless insumo.tipo == 8
        if params["pnd_#{insumo.id.to_s}"] != ""
          params["pnd_#{insumo.id.to_s}"]   ? (pnd = params["pnd_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(4))    : (pnd = 0.0)
          params["pd_#{insumo.id.to_s}"]    ? (pd = params["pd_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(4))      : (pd = 0.0)
          params["pndi_#{insumo.id.to_s}"]  ? (pndi = params["pndi_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(4))  : (pndi = 0.0)
          params["pdi_#{insumo.id.to_s}"]   ? (pdi = params["pdi_#{insumo.id.to_s}"].mudar_virgula_para_ponto.to_f.round(4))    : (pdi = 0.0)
          pd =    pnd if pd == 0.0
          pndi =  pnd if pndi == 0.0
          pdi =   pd if pdi == 0.0
          insumo.estados[params[:estado]] = {"pnd" => pnd, "pd" => pd, "pndi" => pndi, "pdi" => pdi}
          insumo.atualizar_precos_das_composicoes if insumo.save
        end
      end
    end
  end

  def update_valores_de_um_insumo(params)
    ESTADOS.each do |estado|
      if params["pnd_#{estado}"] != ""
        params["pnd_#{estado}"]   ? (pnd = params["pnd_#{estado}"].mudar_virgula_para_ponto.to_f.round(4))    : (pnd = 0.0)
        params["pd_#{estado}"]    ? (pd = params["pd_#{estado}"].mudar_virgula_para_ponto.to_f.round(4))      : (pd = 0.0)
        params["pndi_#{estado}"]  ? (pndi = params["pndi_#{estado}"].mudar_virgula_para_ponto.to_f.round(4))  : (pndi = 0.0)
        params["pdi_#{estado}"]   ? (pdi = params["pdi_#{estado}"].mudar_virgula_para_ponto.to_f.round(4))    : (pdi = 0.0)
        
        pd =    pnd if pd == 0.0
        pndi =  pnd if pndi == 0.0
        pdi =   pd if pdi == 0.0

        self.estados[estado] = {"pnd" => pnd, "pd" => pd, "pndi" => pndi, "pdi" => pdi}
      end
    end
    self.atualizar_precos_das_composicoes if self.save
  end

  def atualizar_precos_das_composicoes
    Banco::Emp::Composicao.da_empresa(self.empresa_id).where("insumos" => {"$elemMatch" => {"id" => self.id.to_s}}).each {|composicao| composicao.set_precos}
  end

  def tipo_por_extenso
    self.tipo.tipo_por_extenso
  end

  def self.clonar(insumo, usuario_logado)
    new_insumo = insumo.clone
    new_insumo.user_id = usuario_logado.id
    #new_insumo.setor_id = usuario_logado.setor_id
    new_insumo.empresa_id = usuario_logado.empresa_id
    new_insumo
  end

  def salvar_copiar(params)
    self.codigo = params[:codigo]
    self.descricao = params[:descricao]
    self.unidade = params[:unidade]
    self.estado = params[:estado]
    self.tipo = params[:tipo]
    ORCALOG.info(self.errors)
    self.save
  end
end
