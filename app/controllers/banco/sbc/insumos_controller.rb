class Banco::Sbc::InsumosController < ApplicationController
  before_action :setar_estados

  def index
    if params[:search]

      if (@estados.include? params[:search][:estados])
        
        #puts "sbc                                        111"

        
        @estado = params[:search][:estados]
        @data = params[:search][:data_atualizacao]
        @chave = params[:search][:chave]
        @tipo = params[:search][:tipo]
        @base = params[:search][:base]        
        if @tipo == "TODOS"
          @insumos = Banco::Sbc::Insumo.na_data(@data).contendo(@chave).order('descricao ASC').paginate(:page => params[:page], :per_page => 10)
        else
          @insumos = Banco::Sbc::Insumo.na_data(@data).do_tipo(@tipo).contendo(@chave).order('descricao ASC').paginate(:page => params[:page], :per_page => 10)
        end
      end
    end

    respond_to do |format|
      format.js { @insumos }
      format.html
    end

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
