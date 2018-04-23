class Banco::Sinapi::InsumoTipo
  include Mongoid::Document

  field :codigo,    type: String
  field :descricao,	type: String
  field :tipo,		  type: Integer

  scope :com_codigo, lambda {|codigo| where(codigo: codigo)}
  scope :do_tipo, lambda {|tipo| where(tipo: tipo)}

  def self.ler_dados_iniciais
  	File.new("tipos_de_insumos.txt", "r").each do |l|
  	  codigo = l[0, 8]
  	  l[0, 9] = ""
  	  l[-1, 1] = ""
  	  tipo = l
  	  self.create("codigo" => codigo, "tipo" => tipo) unless self.where(codigo: codigo).first
  	end
  end

  def self.corrigir_tipos
    Banco::Sinapi::Insumo.where(:tipo.exists => false).each do |insumo|
      ti = Banco::Sinapi::InsumoTipo.com_codigo(insumo["codigo"]).first
      insumo.tipo = ti.tipo
      insumo.save
    end
    true
  end

  def tipo_por_extenso
    self.tipo.tipo_por_extenso
  end
end
