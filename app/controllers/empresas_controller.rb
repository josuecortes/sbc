class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_action :permissao
  skip_before_action :verify_authenticity_token, :only => [:new, :create]

  #respond_to :js, :html
  
  # GET /empresas
  # GET /empresas.json
  def index
    if params[:pesquisa]
      @search = params[:pesquisa][:conteudo]
    end    
    @empresas = Empresa.contendo(@search).order('nome ASC').paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.js {}
      format.html
    end
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new       
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)
    respond_to do |format|
      if @empresa.save
        flash[:success] = @@msgs
        if params[:pesquisa]
          @search = params[:pesquisa][:conteudo]
        end    
        @empresas = Empresa.contendo(@search).order('nome ASC').paginate(:page => params[:page], :per_page => 10)


        #format.html { redirect_to @empresa }
        #format.json { render :show, status: :created, location: @empresa }
        #format.js { }
        format.html {}
        format.json {}
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @empresa.errors }
        format.js { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        flash[:success] = @@msgs
        if params[:pesquisa]
          @search = params[:pesquisa][:conteudo]
        end    
        @empresas = Empresa.contendo(@search).order('nome ASC').paginate(:page => params[:page], :per_page => 10)  



        #format.html { redirect_to @empresa }
        #format.json { render :show, status: :ok, location: @empresa }
        #format.js { }
        format.html {}
        format.json {}
        format.js {}
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
        format.js { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    if @empresa.destroy
      respond_to do |format|
        flash[:success] = @@msgs
        format.html { redirect_to empresas_url }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        flash[:error] = @@msgs
        format.html { redirect_to empresas_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:nome, :cnpj, :cep, :numero, :area, :estado)
    end

    def permissao
      if current_user.permissao != "ADMINISTRADOR"
        redirect_to home_nao_autorizado_path
      end
    end
end
