class Plano
  include Mongoid::Document
  include Mongoid::Timestamps
  field :preco, 					type: Float
  field :desconto, 				type: Float
  field :estados, 				type: Array, default: []
  field :inicio, 					type: Time
  field :fim, 						type: Time
  field :licencas,	      type: Integer, default: 2
  field :transaction_code,    type: String

  belongs_to :empresa
  has_and_belongs_to_many :users

  validates_presence_of :estados, :inicio, :fim, :preco, :empresa_id, :licencas, :transaction_code
  validates_uniqueness_of :transaction_code
  validates_numericality_of :licencas, greater_than: 1

  before_validation :excluir_brancos

	def excluir_brancos
		self.estados = self.estados.reject(&:blank?)
	end

	def ativo
	  if DateTime.now < self.fim
	    return true
	  else
	    return false
	  end
	end

	scope :gerenciaveis, -> { where(:fim.gt => DateTime.now) }
  scope :expirados, -> { where(:fim.lt => DateTime.now) }

  after_save :adicionar_dono_da_empresa_no_plano

  def adicionar_dono_da_empresa_no_plano
    administrador = self.empresa.users.where(permissao: "ADMINISTRADOR").first
    dono = self.empresa.users.where(permissao: "EMPRESA").first
    # if !self.users.include?dono
    #   self.users << dono
    # end
    if !administrador.blank?
      if !administrador.planos.include? self
        administrador << self
        administrador.save
      end
    elsif !dono.blank?
      if !dono.planos.include? self
        dono.planos << self
        dono.save
      end
    end
  end

  def criar_link_plano_criado(licencas, estados)
    pagamento = PagSeguro::PaymentRequest.new

    if licencas > 2 
      licencas = (licencas - 2) * 15
      adicionais = licencas - 2
      item = PagSeguro::Item.new(amount: 15, description: 'Licenças adicionais', quantity: adicionais, id: self.id)
      pagamento.items << item
    

    end

    estados.each do |e|
      descricao = "Estado - #{e}"
      item = PagSeguro::Item.new(amount: 100, description: descricao, id: self.id)
      pagamento.items << item 
    end

    resposta = pagamento.register

    if resposta
      return resposta.url
    else
      return "ERRO"
    end
  end

end
