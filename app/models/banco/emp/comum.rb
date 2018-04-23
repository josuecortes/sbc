module Banco::Emp::Comum
  extend ActiveSupport::Concern
  include Banco::Comum

  included do
    field :empresa_id,  type: BSON::ObjectId
    field :user_id,	type: BSON::ObjectId
    #field :setor_id,		type: BSON::ObjectId
    field :observacao,  type: String
    #field :v4_id,       type: BSON::ObjectId

    belongs_to :empresa
    #belongs_to :setor
    belongs_to :user

    validates_presence_of   :empresa_id
    validates_presence_of   :user_id
    validates_presence_of   :codigo,    :message => "- preenchimento obrigatório"
    validates_uniqueness_of :codigo, scope: :empresa_id, on: :create, message: " já existente"
    validates_presence_of   :descricao, :message => "- preenchimento obrigatório"
    validates_presence_of   :tipo,      :message => "- seleção obrigatória"
    validates_presence_of   :unidade,   :message => "- preenchimento obrigatório"
    validates_presence_of   :estado,    :message => "- seleção obrigatória", :on => :create

    # Scopos
    scope :da_empresa, lambda {|id| where(empresa_id: id)}
    scope :do_usuario, lambda {|id| where(user_id: id)}
    scope :buscar_por_codigo, lambda {|filtro| where(codigo: /#{filtro}/i)}

    #bases proprias
    #scope :na_data, lambda { |q| where(:data => q)}
    scope :do_tipo, lambda { |q| where(:tipo => q)}
    #scope :contendo, lambda {|filtro| where(descricao: /#{filtro}/i)}
    scope :contendo, lambda {|filtro| self.or({descricao: /#{filtro}/i}, {codigo: /#{filtro}/i})}
    scope :do_estado, lambda { |q| where(:estado => q)}


    scope :fora, lambda { |q| where(:codigo.nin => [q])}

    # def self.com_id(id)
    #   self.where(id: id).first
    # end
    # end Scopos

    def sugestao_de_codigo(empresa_id)
      ultimo_composicao = self.class.da_empresa(empresa_id).asc(:created_at).last
      if ultimo_composicao and ultimo_composicao.codigo and !ultimo_composicao.codigo.blank?
        if ultimo_composicao.codigo.blank?
          codigo = "00000001"
          self.codigo = self.sugestao_de_codigo_achar_ultima(empresa_id, codigo)
        else
          codigo = ultimo_composicao.codigo.succ
          self.codigo = self.sugestao_de_codigo_achar_ultima(empresa_id, codigo)
        end
      else
        self.codigo = "00000001"
      end
    end

    def sugestao_de_codigo_achar_ultima(empresa_id, codigo)
      if c = self.class.da_empresa(empresa_id).com_codigo(codigo).first
        codigo = codigo.succ
        self.sugestao_de_codigo_achar_ultima(empresa_id, codigo)
      else
        return codigo
      end
    end
  end
end