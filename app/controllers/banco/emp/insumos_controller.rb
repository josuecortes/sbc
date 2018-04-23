class Banco::Emp::InsumosController < ApplicationController
  #before_action :limites_base_n_insumos?, only: [:new, :create]
  #before_action :tema_insumo
  before_action :instanciar, :only => [:show, :update, :destroy, :edit_valores_de_um_insumo, :update_valores, :copiar]
  #before_action :pode_criar, :only => [:new, :create, :copiar]
  #before_action :pode_editar, :only => [:update, :edit_valores_de_um_insumo, :update_valores_de_um_insumo]
  #before_action :acesso_corporativo, only: [:relatorio]

  def show
    @insumo_clone = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).clonar(@insumo, current_user)
  end

  def new
    #@menu_ativo_new_banco_emp_insumo = true
    @insumo = Banco::Emp::Insumo.new
  end

  def create
    #@menu_ativo_new_banco_emp_insumo = true
    @insumo = Banco::Emp::Insumo.new post_params
    @insumo.pnd =   post_params[:pnd].mudar_virgula_para_ponto.to_f.round(4)
    @insumo.pd =    post_params[:pd].mudar_virgula_para_ponto.to_f.round(4)
    @insumo.pndi =  post_params[:pndi].mudar_virgula_para_ponto.to_f.round(4)
    @insumo.pdi =   post_params[:pdi].mudar_virgula_para_ponto.to_f.round(4)  
    if @insumo.save
      #@empresa_logada.set_lead_scoring(current_user, 8)
      flash[:success] = @@msgs
      redirect_to(banco_emp_insumo_path @insumo)
    else
      flash[:error] = @@msge
      render :action => "new"
    end
  end

  def edit
    #@menu_ativo_new_banco_emp_insumo = true
    @insumo = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).find(params[:id])
  end

  def update
    #@menu_ativo_edit_banco_emp_insumo = true
    respond_to do |format|
      if @insumo.update_attributes(post_params)
        #@empresa_logada.set_lead_scoring(current_user, 8)
        #redirect_to(banco_emp_insumo_path @insumo)
        flash[:success] = @@msgs
        format.html {}
        format.json {}
        format.js {}
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors }
        format.js { render :edit, status: :unprocessable_entity }
        #render :action => "new"
      end
    end
  end

  def destroy
    area_restrita unless current_user.pode? :excluir, @insumo
    @insumo.destroy
    flash[:atencao] = "Insumo Excluido"
    redirect_to banco_insumos_path
  end

  def edit_valores
    #@menu_ativo_edit_banco_emp_insumo = true
    @insumo = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).find(params[:id])
  end

  def update_valores
    respond_to do |format|
      if @insumo.update_valores_de_um_insumo params
        #@empresa_logada.set_lead_scoring(current_user, 8)
        #redirect_to(banco_emp_insumo_path @insumo)
        flash[:success] = @@msgs
        format.html {}
        format.json {}
        format.js {}
        redirect_to banco_emp_insumo_path(@insumo)
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors }
        format.js { render :edit_valores, status: :unprocessable_entity }
        #render :action => "new"
      end
    end
  end

  def instanciar
    @insumo = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).find params[:id]
    #area_restrita unless current_user.pode? :ver, @insumo
  end

  def pode_editar
    area_restrita unless current_user.pode? :editar, @insumo
  end

  def pode_criar
    unless current_user.pode_criar? :insumo
      flash[:erro] = "Você não tem permissão para criar Insumos!"
      redirect_to banco_insumos_path
    end
  end

  # Ações de edição em massa de valores
  #def edit_valores
  #  @insumos = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).que_posso_editar(current_user).asc(:codigo)
  #end

  # def update_valores
    #Banco::Emp::Insumo.update_valores current_user, params
    #flash[:ok] = "Insumos atualizados"
    #redirect_to banco_insumos_path
  # end

  def edit_valores_de_um_estado
    @insumos = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).que_posso_editar(current_user).asc(:codigo)
  end

  def update_valores_de_um_estado
    Banco::Emp::Insumo.update_valores_de_um_estado current_user, params
    flash[:ok] = "Insumos atualizados"
    redirect_to banco_insumos_path
  end

  def relatorio
    @insumos = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).que_posso_ver(current_user)
    render xlsx: "relatorio", filename: "Insumos do OrçaFascio.xlsx"
  end

  def copiar
    @insumo_clone = Banco::Emp::Insumo.clonar(@insumo, current_user)
    @insumo_clone.salvar_copiar(post_params)
    redirect_to(banco_emp_insumo_path @insumo_clone)
  end

  # def updates_valores_das_franquias
  #   area_restrita unless @empresa_logada.tipo_franquia and current_user.admin_emp
  #   Banco::Emp::Insumo.updates_valores_das_franquias current_user, params
  #   flash[:ok] = "Insumos atualizados"
  #   redirect_to banco_insumos_path
  # end

  private
  def post_params
    params.require(:banco_emp_insumo).permit(:empresa_id, :setor_id, :user_id, :codigo, :descricao, :tipo, :unidade, :estado, :pnd, :pd, :pndi, :pdi, :valor, :observacao, :estados => [])
  end
end