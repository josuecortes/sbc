class Banco::Sbc::ComposicoesController < ApplicationController
  before_action :setar_estados

  def index
    if params[:search]
      if @estados.include? params[:search][:estados]
        @estado = params[:search][:estados]
        @data = params[:search][:data_atualizacao]
        @chave = params[:search][:chave]
        @tipo = params[:search][:tipo]
        @item = params[:search][:item]
        if @item == "TODOS"
          @composicoes = Banco::Sbc::Composicao.na_data(@data).contendo(@chave).order('descricao ASC').paginate(:page => params[:page], :per_page => 10)
        else
          @composicoes = Banco::Sbc::Composicao.na_data(@data).do_tipo(@item).contendo(@chave).order('descricao ASC').paginate(:page => params[:page], :per_page => 10)
        end
        if @composicoes.count < 1 
          #flash[:notice] = "Não foram encontradas composições"
        end
      end
    end

    respond_to do |format|
      format.js {}
      format.html
    end

  end

  def show
    @estado = params[:estado]
    if @estados.include? @estado
      @composicao = Banco::Sbc::Composicao.find(params[:id])
      if @composicao == nil
        @composicao = Banco::Sinapi::Composicao.find(params[:id])
      end
      @composicao.set_insumos_e_composicoes
      #@composicao.set_precos(correcao = true)
    end

    respond_to do |format|
      format.js {}
      format.html
    end

  end

  def copiar
    @composicao = Banco::Sbc::Composicao.find params[:id]
    new_c = @composicao.copiar @usuario_logado, params
    redirect_to banco_emp_composicao_path(new_c)
  end

  def relatorio_analitico
    @composicao = Banco::Sbc::Composicao.find(params[:id])
    @estado = params[:estado]
    @composicao.set_precos(correcao = true)
    render xlsx: "relatorio_analitico", filename: "Composicao SBC - #{@composicao.codigo}.xlsx"
  end

  private
    def setar_estados
      if current_user.permissao == "ADMINISTRADOR"
        @estados = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "RJ", "RS", "RO", "SC", "SP", "SE", "TO"]
      else
        @estados = []
        current_user.planos.each do |p|
         if p.ativo
           p.estados.each do |i|
             @estados << i
           end
         end
        end
      end
    end
end
