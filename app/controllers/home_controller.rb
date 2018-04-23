class HomeController < ApplicationController
  respond_to :html
  
  def index
    @empresa = current_user.empresa
    @ativos = @empresa.planos.gerenciaveis.count
    @expirados = @empresa.planos.expirados.count
    @planos = @empresa.planos.count
  end

  def nao_autorizado
  end

  def meus_planos
  	@planos = current_user.empresa.planos.order_by("fim DESC")
  	@meus_planos = current_user.planos.gerenciaveis.order_by("fim DESC")
  end

  def usuario_planos
  	if current_user.permissao != "CLIENTE"
  		@empresa = current_user.empresa
    	@plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
      ids = @plano.users.collect {|u| [u.id]}
      @fora = @plano.empresa.users.where(:id.nin => ids)
    else

    end
  end

  def adicionar_usuario_plano
    @empresa = current_user.empresa
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
    
    redirect_to home_usuario_planos_path(plano_id: @plano.id)
  end

  def remover_usuario_plano
    @empresa = current_user.empresa
    @plano = @empresa.planos.gerenciaveis.find(params[:plano_id])
    @usuario =@empresa.users.find(params[:user_id])
    if @usuario.permissao == "CLIENTE"
      if @usuario.remover_plano(@plano)
        flash[:success] = "Usuário removido do plano"
      else
        flash[:error] = "Erro ao remover usuário do plano"
      end
    else
      flash[:error] = "Esse usuário não pode ser removido do plano!"
    end

    redirect_to home_usuario_planos_path(plano_id: @plano.id)

  end

  def minha_empresa
    if current_user.permissao != "CLIENTE"
      @empresa = current_user.empresa
    end
  end

  def atualizar_empresa
    if current_user.permissao != "CLIENTE"
      @empresa = current_user.empresa
      if @empresa.update(empresa_params)
        flash[:success] = @@msgs
        redirect_to home_index_path
      else
        respond_to do |format|
          flash[:error] = @@msge
          format.html { render :minha_empresa }
        end
      end
    else
      redirect_to home_nao_autorizado_path
    end
  end

  def bem_vindo
    current_user.bem_vindo = false
    current_user.save(validate: false)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:nome, :cnpj, :cep, :mumero, :area, :estado, :numero)
    end
end
