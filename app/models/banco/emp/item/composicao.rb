class Banco::Emp::Item::Composicao
  include Mongoid::Document

  field :b,   type: String
  field :c,   type: String
  field :q,   type: Float

  embedded_in :composicao, class_name: "Banco::Emp::Composicao"
end
