class Banco::Sinapi::Composicao
  include Banco::Sinapi::Comum

  field :tipo,				type: String
  field :composicoes, type: Array # [{ id: BSON::ObjectId, c: String, q: Float }]
  field :insumos,			type: Array # [{ id: BSON::ObjectId, c: String, q: Float }]
  field :estados_calculado, type: Hash,   default: {} # { uf: {pnd: Float, pd: Float } pnd - Preço nao desonerado, pd - Preço desonerado

  attr_accessor :composicoes_auxiliares_provisorias
  attr_accessor :insumos_provisorios
  attr_accessor :quantidade
  attr_accessor :pnd
  attr_accessor :pd

  def set_precos(correcao = false)
    if correcao or self.estados_calculado.size == 0
      ESTADOS.each {|estado| self.estados_calculado["#{estado}"] = {"pnd" => 0.0, "pd" => 0.0}}
      self.set_insumos_e_composicoes
      self.insumos_provisorios.each do |ip|
        ESTADOS.each do |estado|
          self.estados_calculado["#{estado}"]["pnd"] += (ip.estados["#{estado}"]["pnd"].to_f * ip.quantidade.to_f).truncate(2)
          self.estados_calculado["#{estado}"]["pd"] += (ip.estados["#{estado}"]["pd"].to_f * ip.quantidade.to_f).truncate(2)
        end
      end
      self.composicoes_auxiliares_provisorias.each do |cp|
        cp.set_precos(correcao)
        ESTADOS.each do |estado|
          self.estados_calculado["#{estado}"]["pnd"] += (cp.estados_calculado["#{estado}"]["pnd"].to_f * cp.quantidade.to_f).truncate(2)
          self.estados_calculado["#{estado}"]["pd"] += (cp.estados_calculado["#{estado}"]["pd"].to_f * cp.quantidade.to_f).truncate(2)
        end
      end
      ESTADOS.each do |estado|
        self.estados_calculado["#{estado}"]["pnd"] = self.estados_calculado["#{estado}"]["pnd"].round(2)
        self.estados_calculado["#{estado}"]["pd"]  = self.estados_calculado["#{estado}"]["pd"].round(2)
      end
      self.save
    end
  end

  def set_insumos_e_composicoes
    self.composicoes_auxiliares_provisorias = []
    self.insumos_provisorios = []
    self.composicoes.each do |x|
      if c = Banco::Sinapi::Composicao.da_data(self.data).com_codigo(x["c"]).first
        x["id"] = c.id
        c.quantidade = x["q"]
        self.composicoes_auxiliares_provisorias << c
      end
    end
    self.insumos.each do |x|
      if i = Banco::Sinapi::Insumo.da_data(self.data).com_codigo(x["c"]).first
        x["id"] = i.id
        i.quantidade = x["q"]
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
    new_c.data =        self.data
    new_c.estado =      params["estado"]
    new_c.estados =     self.estados
    new_c.composicoes = []
    new_c.insumos =     []
    self.composicoes.each do |c|
      ca = Banco::Sinapi::Composicao.da_data(self.data).com_codigo(c["c"]).first
      new_c.composicoes <<  { :b => "SINAPI", :c => c["c"], :d => ca.descricao, :q => c["q"] }
    end
    self.insumos.each do |i|
      ia = Banco::Sinapi::Insumo.da_data(self.data).com_codigo(i["c"]).first
      new_c.insumos <<  { :b => "SINAPI", :c => i["c"], :d => ia.descricao, :q => i["q"] }
    end
    new_c.save
    new_c
  end

  def tipo_por_extenso
    self.tipo.tipo_de_composicao_sinapi_por_extenso
  end
end
