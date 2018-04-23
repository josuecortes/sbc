class Banco::Emp::Item::Insumo
  include Mongoid::Document

  field :b, type: String
  field :t, type: Integer
  field :c, type: String
  field :q, type: Float
  field :o, type: Float
  field :i, type: Float

  embedded_in :composicao, class_name: "Banco::Emp::Composicao"

  scope :do_tipo, lambda { |q| where(:tipo => q)}
  #scope :contendo, lambda {|filtro| where(descricao: /#{filtro}/i)}
  scope :contendo, lambda {|filtro| self.or({descricao: /#{filtro}/i}, {codigo: /#{filtro}/i})}

end
