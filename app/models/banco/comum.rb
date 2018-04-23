module Banco::Comum
  extend ActiveSupport::Concern
  include Mongoid::Document
  include Mongoid::Timestamps

  included do
    field :codigo,			type: String
    field :descricao,		type: String
    field :unidade,			type: String
    field :estados,			type: Hash,   default: {} # { uf: {pnd: Float, pd: Float } pnd - Preço nao desonerado, pd - Preço desonerado
                                         # se SICRO { uf: {nd: {che: Float, ch_de_eq: Float, ch_da_mo: Float, cud: Float, ldi: Float, pr_un: Float}, d: {che: Float, ch_de_eq: Float, ch_da_mo: Float, cud: Float, ldi: Float, pr_un: Float} } }
    attr_accessor :banco
    attr_accessor :id_intermediario
    attr_accessor :utilizacao_operativa
    attr_accessor :utilizacao_improdutiva

    scope :com_codigo, lambda {|codigo| where(codigo: codigo)}
    scope :do_tipo, lambda {|tipo| where(tipo: tipo)}
    scope :buscar_por_descricao, lambda {|filtro| where(descricao: /#{filtro.sepp}/i)}
    scope :buscar_por_codigo, lambda {|filtro| where(codigo: /^#{filtro}/i)}
    scope :buscar, lambda {|filtro| self.or({codigo: /#{filtro}/i}, {descricao: /#{filtro.sepp}/i})}


    #bases proprias
    #scope :na_data, lambda { |q| where(:data => q)}
    #scope :do_tipo, lambda { |q| where(:tipo => q)}
    #scope :contendo, lambda {|filtro| where(descricao: /#{filtro}/i)}
    scope :contendo, lambda {|filtro| self.or({descricao: /#{filtro}/i}, {codigo: /#{filtro}/i})}



    before_save   :mudar_unidade

    def mudar_unidade
      self.unidade = self.unidade.mascara_de_unidade
      true
    end

    def self.com_id(id)
      self.where(id: id).first
    end

    def self.find(id)
      self.where(id: id).first
    end
  end
end