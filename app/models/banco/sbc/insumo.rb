class Banco::Sbc::Insumo
  include Banco::Sinapi::Comum

  field :tipo, type: Integer

  attr_accessor :quantidade
  attr_accessor :pnd
  attr_accessor :pd

  def tipo_por_extenso
    self.tipo.tipo_por_extenso
  end

  scope :na_data, lambda { |q| where(:data => q)}
  scope :do_tipo, lambda { |q| where(:tipo => q)}
  #scope :contendo, lambda {|filtro| where(descricao: /#{filtro}/i)}
  scope :contendo, lambda {|filtro| self.or({descricao: /#{filtro}/i}, {codigo: /#{filtro}/i})}
  
end
