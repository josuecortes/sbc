class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  field :permissao,           type: String
  field :ativo,               type: Boolean,  default: "true"
  field :mudar_senha,         type: Boolean,  default: "false"
  field :nome,                type: String,   default: ""
  field :criar_empresa,       type: Boolean,  default: "false"

  field :bem_vindo,           type: Boolean,  default: "true"

  mount_uploader :avatar, AvatarUploader

  belongs_to :empresa, required: false
  has_and_belongs_to_many :planos, inverse_of: :users

  validates_presence_of :permissao, :nome
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_uniqueness_of :email

  #erro que da ao salvar https://github.com/plataformatec/devise/issues/4542
  def will_save_change_to_email?
  end

  after_create :checar_criar_empresa

  def checar_criar_empresa
    if self.criar_empresa == true
      e = Empresa.new
      e.nome = "Empresa de #{self.nome}"
      if e.save
        self.criar_empresa = false
        self.empresa = e
        if self.save
          p = Plano.new
          p.empresa = e
          p.estados = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "RJ", "RS", "RO", "SC", "SP", "SE", "TO"]
          p.inicio = DateTime.now
          p.fim = DateTime.now + 7.days
          p.preco = 0.0
          p.desconto = 0.0
          p.licencas = 2
          p.user_ids << self.id
          p.transaction_code = p.id
          p.save
        end
      else
        self.destroy
      end
    end
  end

  def planos_ativos
    estados = []
    self.planos.gerenciaveis.each do |p|
      estados << p.estados
    end
    return estados
  end

  def adicionar_plano(plano)
    self.planos << plano
    if self.save
      return true
    else
      return false
    end
  end

  def remover_plano(plano)
    self.planos.delete(plano)
    if self.save
      return true
    else
      return false
    end
  end

  scope :da_empresa, lambda { |q| where(:empresa_id => q)}

  scope :contendo, lambda {|filtro| self.or({nome: /#{filtro}/i}, {email: /#{filtro}/i})}



end
