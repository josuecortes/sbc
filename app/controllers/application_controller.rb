class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  protect_from_forgery with: :exception 
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :esta_ativo
  skip_before_action :esta_ativo, if: :devise_controller?
  #before_action :usuario_logado

  @@msgs = "Operação concluida com sucesso!"
  @@msge = "Erro ao tentar concluir a operação."

  #def usuario_logado
  #  if user_signed_in?
  #    @usuario_logado = current_user
  #  end
  #end

  def after_sign_in_path_for(resource_or_scope)
    flash[:notice] = ""
    authenticated_root_url
  end

  def after_sign_out_path_for(resource_or_scope)
    flash[:success] = ""
    flash[:error] = ""
    flash[:notice] = ""
  end

  def esta_ativo
    if user_signed_in?
      if current_user.ativo == false
        flash[:notice] = "Sua conta esta desativada! Contate o administrador do sistema para ativar/reativar sua conta"
        sign_out(current_user)
        redirect_to new_user_session_path
      elsif current_user.ativo == true and current_user.mudar_senha == true
        flash[:notice] = "Você Precisa Mudar a Sua Senha. Sua Senha Atual é: 12345678"
        redirect_to edit_user_registration_path
      end
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:criar_empresa, :avatar, :empresa_id, :permissao, :nome, :ativo, :mudar_senha, :email, :password, :password_confirmation,
                                                             :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,
                                                             :current_password, :last_sign_in_ip, plano_ids: [])
      end
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:criar_empresa, :avatar, :empresa_id, :permissao, :nome, :ativo, :mudar_senha, :email, :password, :password_confirmation,
                                                              :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,
                                                             :current_password, :last_sign_in_ip, plano_ids: [])
      end
    end

end