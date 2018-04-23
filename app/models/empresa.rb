class Empresa
  include Mongoid::Document
  include Mongoid::Timestamps

  

  field :nome, 			type: String
  field :cnpj, 			type: String
  field :cep, 			type: String
  field :numero, 		type: String
  field :area,			type: String
  field :estado,    type: String
  
  has_many :users
  has_many :planos

  validates_presence_of :nome
  validates_uniqueness_of :nome

  scope :contendo, lambda {|filtro| self.or({nome: /#{filtro}/i}, {cnpj: /#{filtro}/i})}

end