class Banco::Emp::Item::TempoFixo
  include Mongoid::Document

  field :b,   type: String
  field :c,   type: String
  field :q,   type: Float
  field :ref, type: String

  embedded_in :composicao, class_name: "Banco::Emp::Composicao"
end
