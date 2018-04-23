class Banco::Sinapi::LeiSocial
  include Mongoid::Document

  field :uf,  				type: String
  field :data,  			type: String
  field :porcentagem, type: String
end
