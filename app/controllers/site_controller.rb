class SiteController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def criar_transacao
  	t = Transacao.new
  	if t.criar_transacao(params[:estados],params[:licencas],params[:valor])
  		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: {id: t.id, status: t.status, link: t.link, retorno: true} }
	    end
  	else
  		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: {link: "", retorno: false} }
	    end
  	end
  end
end