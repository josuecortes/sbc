class ConfiguracoesController < ApplicationController
  before_action :set_configuracao, only: [:show, :edit, :update, :destroy]
  before_action :permissao

  respond_to :html

  def index
    @configuracoes = Configuracao.all
    respond_with(@configuracoes)
  end

  def show
    respond_with(@configuracao)
  end

  def new
    #@configuracao = Configuracao.new
    #respond_with(@configuracao)
  end

  def edit
  end

  def create
    #@configuracao = Configuracao.new(configuracao_params)
    #if @configuracao.save
      #flash[:success] = @@msgs
    #else
      #flash[:error] = @@msge
    #end
    respond_with(@configuracao)
  end

  def update
    if @configuracao.update(configuracao_params)
      flash[:success] = @@msgs
      redirect_to configuracoes_path
    else
      flash[:error] = @@msge
      respond_to do |format|
        format.html { render :edit }
      end
    end
    #respond_with(@configuracao)
  end

  def destroy
    @configuracao.destroy
    respond_with(@configuracao)
  end

  private
    def set_configuracao
      @configuracao = Configuracao.find(params[:id])
    end

    def configuracao_params
      params.require(:configuracao).permit(:valor_estado, :valor_licenca)
    end

    def permissao
      if current_user.permissao != "ADMINISTRADOR"
        redirect_to home_nao_autorizado_path
      end
    end

end
