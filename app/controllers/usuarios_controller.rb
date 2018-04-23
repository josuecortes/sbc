class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :permissao

  # GET /supervisaos
  # GET /supervisaos.json
  def index
    if params[:pesquisa]
      @search = params[:pesquisa][:conteudo]
    end
    if current_user.permissao != "ADMINISTRADOR"
      @usuarios = User.da_empresa(current_user.empresa.id).contendo(@search).order('nome ASC').paginate(:page => params[:page], :per_page => 10)
    else
      @usuarios = User.contendo(@search).order('nome ASC').paginate(:page => params[:page], :per_page => 10)
    end
    respond_to do |format|
      format.js {}
      format.html
    end    
  end

  # GET /supervisaos/1
  # GET /supervisaos/1.json
  def show
  end

  # GET /supervisaos/new
  def new
    @usuario = User.new
  end

  # GET /supervisaos/1/edit
  def edit
  end

  # POST /supervisaos
  # POST /supervisaos.json
  def create
    @usuario = User.new(usuario_params)
    respond_to do |format|
      if @usuario.save
        flash[:success] = @@msgs
        format.html { redirect_to usuarios_url }
        format.json { render :show, status: :created, location: @usuario }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
        format.js { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supervisaos/1
  # PATCH/PUT /supervisaos/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        flash[:success] = @@msgs
        format.html { redirect_to usuarios_url, notice: @@msgs }
        format.json { render :show, status: :ok, location: @usuario }
        format.js {}
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
        format.js { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisaos/1
  # DELETE /supervisaos/1.json
  def destroy
    if current_user.permissao != "ADMINISTRADOR"
      @usuario = User.da_empresa(current_user.empresa.id).find(params[:id])
    else
      @usuario = User.find(params[:id])
    end
    if @usuario.ativo == true
      @usuario.ativo = false
      @usuario.planos = nil
    else
      @usuario.ativo = true
    end
    if @usuario.save!
      flash[:success] = @@msgs
    else
      flash[:error] = @@msge
    end
    redirect_to usuarios_url
  end

  def redefinir_senha
    @usuario = User.find(params[:usuario_id])
    @usuario.mudar_senha = true
    @usuario.password = @usuario.password_confirmation = "12345678"
    if @usuario.save(:validate=>false)
      redirect_to usuarios_url, notice: 'Senha redefinida com sucesso. Nova Senha = 12345678'
    else
      redirect_to usuarios_url, error: 'A Senha não foi redefinida, favor checar o cadastro.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      if current_user.permissao != "ADMINISTRADOR"
        @usuario = User.da_empresa(current_user.empresa.id).find(params[:id])
      else
        @usuario = User.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:user).permit(:permissao, :nome, :empresa_id, :ativo, :mudar_senha, :email, 
                                   :password, :password_confirmation,
                                   :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,
                                   :current_password, :last_sign_in_ip, :plano_ids => [])
    end

    def permissao
      if current_user.permissao == "CLIENTE"
        redirect_to home_nao_autorizado_path
      end
    end
end
