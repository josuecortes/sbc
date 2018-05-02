class SiteController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
    @configuracao = Configuracao.first
  end

  def criar_transacao
  	
    

  end
end