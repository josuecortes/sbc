class Banco::Sbc::Composicao
  include Banco::Sinapi::Comum

  field :tipo,        type: String
  field :composicoes, type: Array,   default: [] # [{ id: BSON::ObjectId, c: String, q: Float }]
  field :insumos,     type: Array,   default: [] # [{ id: BSON::ObjectId, c: String, q: Float }]
  field :data_sinapi, type: String

  attr_accessor :composicoes_auxiliares_provisorias
  attr_accessor :insumos_provisorios
  attr_accessor :quantidade
  attr_accessor :pnd
  attr_accessor :pd

  def set_precos(correcao = false)
    if correcao or self.estados.size == 0
      (ESTADOS - ["RR","RN","PI"]).each {|estado| self.estados[estado] = {"pnd" => 0.0, "pd" => 0.0}}
      self.set_insumos_e_composicoes
      (ESTADOS - ["RR","RN","PI"]).each do |estado|
        self.insumos_provisorios.each do |ip|
          if ip.estados[estado]
            self.estados[estado]["pnd"] +=  ip.estados[estado]["pnd"]  * ip.quantidade
            self.estados[estado]["pd"]  +=   ip.estados[estado]["pd"]   * ip.quantidade
          end
        end

        self.composicoes_auxiliares_provisorias.each do |cp|
          cp.set_precos(correcao) unless cp.banco == "SINAPI"
          self.estados[estado]["pnd"] +=  cp.estados[estado]["pnd"]  * cp.quantidade
          self.estados[estado]["pd"]  +=   cp.estados[estado]["pd"]   * cp.quantidade
        end
        self.save
      end
    end
  end

  def set_insumos_e_composicoes
    self.composicoes_auxiliares_provisorias = []
    self.insumos_provisorios = []
    self.composicoes.each do |x|
      if x["b"] == "SBC" or x["b"].blank?
        c = Banco::Sbc::Composicao.da_data(self.data).com_codigo(x["c"]).first
      elsif x["b"] == "SINAPI"
        c = Banco::Sinapi::Composicao.da_data(self.data_sinapi).com_codigo(x["c"]).first
      end
      if c
        x["id"] = c.id
        c.quantidade = x["q"]
        c.banco = x["b"]
        self.composicoes_auxiliares_provisorias << c
      end
    end
    self.insumos.each do |x|
      if x["b"] == "SBC" or x["b"].blank?
        i = Banco::Sbc::Insumo.da_data(self.data).com_codigo(x["c"]).first
      elsif x["b"] == "SINAPI"
        i = Banco::Sinapi::Insumo.da_data(self.data).com_codigo(x["c"].completar_com_zeros).first
      end
      if i
        x["id"] = i.id
        i.quantidade = x["q"]
        i.banco = x["b"]
        self.insumos_provisorios << i
      end
    end
  end

  def copiar(usuario, params)
    new_c = Banco::Emp::Composicao.new
    new_c.empresa_id =  usuario.empresa_id
    new_c.setor_id =    usuario.setor_id
    new_c.usuario_id =  usuario.id
    new_c.codigo =      new_c.sugestao_de_codigo(usuario.empresa_id)
    new_c.descricao =   params["descricao"]
    new_c.tipo =        self.tipo
    new_c.unidade =     self.unidade
    new_c.data =        self.data_sinapi
    new_c.estado =      params["estado"]
    new_c.estados =     self.estados
    new_c.composicoes = []
    new_c.insumos =     []
    self.composicoes.each do |c|
      data = (c["b"] == "SBC" ? self.data : self.data_sinapi)
      ca = Banco::Busca.classe_composicao_do_banco(c["b"]).da_data(data).com_codigo(c["c"]).first
      new_c.composicoes <<  { :b => c["b"], :c => c["c"], :d => ca.descricao, :q => c["q"] } if ca
    end
    self.insumos.each do |i|
      if i["b"] == "SBC"
        ia = Banco::Sbc::Insumo.da_data(self.data).com_codigo(i["c"]).first
      elsif i["b"] == "SINAPI"
        ia = Banco::Sinapi::Insumo.da_data(self.data_sinapi).com_codigo(i["c"]).first
      end
      new_c.insumos <<  { :b => i["b"], :c => i["c"], :d => ia.descricao, :q => i["q"] } if ia
    end
    new_c.save
    Metodo.error_messages new_c
    new_c
  end

  def tipo_por_extenso
    self.tipo.tipo_de_composicao_sbc_por_extenso
  end

  scope :na_data, lambda { |q| where(:data => q)}
  scope :do_tipo, lambda { |q| where(:tipo => q)}
  #scope :contendo, lambda {|filtro| where(descricao: /#{filtro}/i)}

  scope :contendo, lambda {|filtro| self.or({descricao: /#{filtro}/i}, {codigo: /#{filtro}/i})}

  ESTADOS = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "RJ", "RS", "RO", "SC", "SP", "SE", "TO"]

end
