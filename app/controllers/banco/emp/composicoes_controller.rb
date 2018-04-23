class Banco::Emp::ComposicoesController < ApplicationController
  #before_action :limites_base_n_composicoes?, only: [:new, :create, :copiar]
  #before_action :tema_composicao
  before_action :instanciar, :only => [:show, :edit, :update, :destroy, :add_subitem, :edit_itens, :update_itens, :autocompletar, :modelo_sicro_3_autocompletar, :copiar, :excluir_subitem, :update_quantidade, :criar_insumo]

  def show
    # @menu_ativo_banco_emp_composicao = true
    # if @composicao.quant_itens == 0
    #   flash[:erro] = "A composição deve ter pelo menos 1 insumo ou composição auxiliar"
    #   redirect_to edit_itens_banco_emp_composicoes_path(id: @composicao.id)
    # end
    
    if @composicao.modelo_sicro3
      @composicao.modelo_sicro3_set_precos
      render :show_sicro3
    else
      @composicao.set_precos
      render :show
    end
  end

  def new
    if current_user
      #@menu_ativo_new_banco_emp_composicao = true
      @composicao = Banco::Emp::Composicao.new
    else
      flash[:erro] = "Você não tem permissão para criar Composições!"
      redirect_to banco_composicoes_path
    end
  end

  def create
    @menu_ativo_new_banco_emp_composicao = true
    @composicao = Banco::Emp::Composicao.new post_params
    if @composicao.save
      #current_user.empresa.set_lead_scoring(current_user, 7)
      if @composicao.modelo_sicro3
        redirect_to banco_emp_composicao_path id: @composicao.id
      else
        redirect_to edit_itens_banco_emp_composicoes_path id: @composicao.id
      end
    else
      render :action => "new"
    end
  end

  def edit
    @menu_ativo_edit_banco_emp_composicao = true
  end

  def update
    @menu_ativo_edit_banco_emp_composicao = true
    @composicao.update_attributes(post_params)
    @composicao.producao_da_equipe = params[:banco_emp_composicao][:producao_da_equipe].mudar_virgula_para_ponto
    @composicao.fic                = params[:banco_emp_composicao][:fic].mudar_virgula_para_ponto
    @composicao.save
    if @composicao.quant_itens == 0
      redirect_to(edit_itens_banco_emp_composicoes_path id: @composicao.id)
    else
      redirect_to banco_emp_composicao_path
    end
  end

  def destroy
    @composicao.destroy
    redirect_to banco_composicoes_path
  end

  def edit_itens
    @menu_ativo_banco_edit_itens_emp_composicoes = true
    @composicao.set_precos
    @insumo = Banco::Emp::Insumo.new
    @contador = 1
  end

  def add_subitem
    #render :json => (@composicao.add_subitem params)

    if @composicao.add_subitem params
      flash[:success] = "Item Adicionado"
      return true
    else
      flash[:error] = "Erro ao Adicionar Item"
      return false
    end
    #redirect_to edit_itens_banco_emp_composicoes_path(id: @composicao.id)
    

    respond_to do |format|
      format.html {}
      format.json {}
      format.js {}
    end

  end

  def excluir_subitem
    #render :json => @composicao.excluir_subitem(params)

    if @composicao.excluir_subitem(params)
      flash[:success] = "Item Excluido"
    else
      flash[:error] = "Erro ao Excluir Item"
    end

    redirect_to edit_itens_banco_emp_composicoes_path(id: @composicao.id)

  end

  def adiconar_insumo_proprio
    @composicao = Banco::Emp::Composicao.find(params[:id])  

    respond_to do |format|
      format.html {}
      format.json {}
      format.js {}
    end

  end


  def autocomplete_dados_insumos_proprios
    term = params[:term]
    estado = params[:estado]
    
    x = Banco::Emp::Composicao.find(params[:id]).id

    puts x
    puts "-----------------"

    insumos = Banco::Emp::Insumo.da_empresa(current_user.empresa_id).contendo(term).all
    render :json => insumos.map {
      |insumo| {
        :id => insumo._id.to_s,
        :codigo => insumo.codigo,
        :descricao => insumo.descricao,
        :unidade => insumo.unidade,
        :preco => insumo.estados[estado] ? insumo.estados[estado]["pnd"].real_contabil : "R$ 0,00",
        :tipo_texto => insumo.tipo ? insumo.tipo_por_extenso : "",
        :tipo => insumo.tipo ? insumo.tipo : ""
      } 
    }
  end


  def autocompletar
    itens = Banco::Busca.autocompletar(@composicao, current_user, current_user.empresa, params)
    estado = @composicao.estado
    itens.each {|i| i.set_precos unless i.estados}
    render :json => itens.map {|item|{
      id:         item.id.to_s,
      codigo:     item.codigo,
      descricao:  ActionController::Base.helpers.sanitize(item.descricao.gsub(/\n/," ")),
      tipo:       item.tipo ? item.tipo_por_extenso : "",
      unidade:    item.unidade,
      pnd:        item.pnd,
      pd:         item.pd,
      nitem:      params[:nitem]
      }}
  end

    def modelo_sicro_3_autocompletar
      itens = Banco::Busca.buscar_itens_para_composicao_emp(@composicao, current_user, params)
      estado = @composicao.estado
      # itens.each {|i| i.set_precos unless i.estados}
      if params[:classe] == "insumo"
        render :json => itens.map {|item|{
          id:               item["id"].to_s,
          codigo:           item["codigo"],
          descricao:        ActionController::Base.helpers.sanitize(item["descricao"].gsub(/\n/," ")),
          tipo:             item["tipo"],
          tipo_por_extenso: item["tipo"].tipo_por_extenso,
          unidade:          item["unidade"],
          pnd:              item["pnd"],
          pd:               item["pd"],
          pndi:             item["pndi"] ? item["pndi"] : "",
          pdi:              item["pdi"] ? item["pdi"] : "",
          data:             item["data"]
          }}
        else
          render :json => itens.map {|item|{
            id:         item["id"].to_s,
            codigo:     item["codigo"],
            descricao:  ActionController::Base.helpers.sanitize(item["descricao"].gsub(/\n/," ")),
            unidade:    item["unidade"],
            pnd:        item["pnd"],
            pd:         item["pd"],
            data:       item["data"]
            }}
          end
        end

        def update_quantidade
          render :json => @composicao.update_quantidade(params)
        end

        def criar_insumo
          @composicao.criar_insumo params
          redirect_to edit_itens_banco_emp_composicoes_path(id: @composicao.id.to_s)
        end

        def copiar
          new_c = @composicao.copiar current_user, params
          redirect_to banco_emp_composicao_path(new_c)
        end

        def instanciar
          unless @composicao = Banco::Emp::Composicao.com_id(params[:id])
            flash[:erro] = "Composição não encontrada"
            redirect_to banco_composicoes_path
          end
        end

        def relatorio
          @composicoes = Banco::Emp::Composicao.da_empresa(current_user.empresa_id).que_posso_ver(current_user)
          render xlsx: "relatorio", filename: "Composições do OrçaFascio.xlsx"
        end

        private
        def post_params
          params.require(:banco_emp_composicao).permit(:modelo_sicro3, :empresa_id, :setor_id, :user_id, :codigo, :descricao, :mao_de_obra, :tipo, :unidade, :data, :estado, :observacao, :producao_da_equipe, :fic)
        end
      end
