class PlanosController < ApplicationController
  before_action :set_plano, only: [:show, :edit, :update, :destroy]
  before_action :permissao
  
  # GET /planos
  # GET /planos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @planos = @empresa.planos.order_by("expira_em DESC")
  end

  # GET /planos/1
  # GET /planos/1.json
  def show
  end

  # GET /planos/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.build
  end

  # GET /planos/1/edit
  def edit
  end

  # POST /planos
  # POST /planos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.new(plano_params)

    respond_to do |format|
      if @plano.save!
        flash[:success] = @@msgs
        format.html { redirect_to empresa_planos_path(@empresa) }
        format.json { render :index, status: :created, location: @plano }
      else
        flash[:error] = @@msge
        format.html { render :new }
        format.json { render json: @plano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planos/1
  # PATCH/PUT /planos/1.json
  def update
    respond_to do |format|
      if @plano.update(plano_params)
        flash[:success] = @@msgs
        format.html { redirect_to empresa_planos_path(@empresa) }
        format.json { render :index, status: :ok, location: @plano }
      else
        flash[:error] = @@msge
        format.html { render :edit }
        format.json { render json: @plano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planos/1
  # DELETE /planos/1.json
  def destroy
    flash[:info] = "Sem apagar aqui >_< "
    redirect_to empresa_planos_path(@empresa)
  end

  def usuarios
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
    ids = @plano.users.collect {|u| [u.id]}
    @fora = @plano.empresa.users.where(:id.nin => ids)
  end

  def adicionar
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
    @usuario =@empresa.users.find(params[:user_id])
    
    if @plano.users.count < @plano.licencas
      if @usuario.adicionar_plano(@plano)
        flash[:success] = "Usuário adicionado ao plano"
      else
        flash[:error] = "Erro ao adicionar usuário no plano"
      end
    else
      flash[:error] = "Adicione mais licenças para poder adicionar usuários"
    end
    
    redirect_to empresa_plano_usuarios_path(@empresa,@plano)

  end

  def remover
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
    @usuario = @plano.users.find(params[:user_id])
    if @usuario.permissao == "CLIENTE"
      if @usuario.remover_plano(@plano)
        flash[:success] = "Usuário removido do plano"
      else
        flash[:error] = "Erro ao remover usuário do plano"
      end
    else
      flash[:error] = "Esse usuário não pode ser removido do plano!"
    end

    redirect_to empresa_plano_usuarios_path(@empresa,@plano)

  end

  def adicionais
    @empresa = Empresa.find(params[:empresa_id])
    @plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plano
      @empresa = Empresa.find(params[:empresa_id])
      @plano = @empresa.planos.gerenciaveis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plano_params
      params.require(:plano).permit(:preco, :desconto, :inicio, :fim, :empresa_id, :licencas, :transaction_code, :estados=>[], :user_ids=>[])
    end

    def permissao
      if current_user.permissao != "ADMINISTRADOR"
        redirect_to home_nao_autorizado_path
      end
    end
end
