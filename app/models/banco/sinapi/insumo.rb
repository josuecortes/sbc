class Banco::Sinapi::Insumo
  include Banco::Sinapi::Comum

  field :tipo, type: Integer
  attr_accessor :pnd
  attr_accessor :pd
  attr_accessor :quantidade

  scope :buscar_por_codigo, lambda {|filtro| where(codigo: /#{filtro}/i)}

  def tipo_por_extenso
    self.tipo.tipo_por_extenso
  end
end
