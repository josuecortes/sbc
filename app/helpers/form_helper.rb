module FormHelper
  def create_or_update(objeto)
    objeto.created_at ? "update" : "create"
  end

  def select_bancos
    html = ""
    html << "<option value='SINAPI'>SINAPI</option><option value='Emp'>Próprio</option>"
    if @empresa_logada.pode_usar_banco_sbc?
      html << "<option value='SBC'>SBC</option>"
    else
      html << "<option value='SBC'>SBC - (Bloqueado)</option>"
    end
    if @empresa_logada.pode_usar_bancos?
      BASESADICIONAIS.each {|base| html << "<option value='#{ base }'>#{ base }#{ " - #{Banco::Busca.banco_estado(base, "")}" if (base != "SICRO3") and (base != "SICRO2") }</option>"}
    else
      BASESADICIONAIS.each {|base| html << "<option value='#{ base }'>#{ base }#{ " - #{Banco::Busca.banco_estado(base, "")}" if (base != "SICRO3") and (base != "SICRO2") } - (Bloqueado)</option>"}
    end
    html.html_safe
  end

  def select_tipo_insumo(tipos, objeto = nil)
    html = ""
    if objeto.class == Orc::Insumo
      html << "<option value='#{ objeto.t }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.t
    else
      html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.tipo
    end
    tipos.each {|tipo| html << "<option value='#{ tipo["index"] }'>#{ tipo["nome"] }</option>"}
    html.html_safe
  end

  def select_tipo_insumo_sicro(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDEINSUMOSSICRO.each {|tipo| html << "<option value='#{ tipo["index"] }'>#{ tipo["nome"] }</option>"}
    html.html_safe
  end

  def select_tipo_composicao(tipos, objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.tipo
    tipos.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo.tipo_de_composicao_sinapi_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_sicro2(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESSICRO.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo.tipo_de_composicao_sicro2_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_do_orcamento(objeto = nil)
    html = ""
    html << "<option value='#{ objeto["t"] }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto["t"]
    TIPOSDECOMPOSICOES.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo.tipo_de_composicao_sinapi_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_orse(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo_por_extenso }</option>" if objeto and objeto.tipo
    Banco::Orse::ComposicaoGrupo.each {|tipo| html << "<option value='#{ tipo.codigo }'>#{ tipo.codigo } - #{ tipo.descricao }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_siurb(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo }</option>" if objeto and objeto.tipo
    html << "<option value='Edificações'>Edificações</option>"
    html << "<option value='Infraestrutura'>Infraestrutura</option>"
    html << "<option value='Composições Auxiliares'>Composições Auxiliares</option>"
    html.html_safe
  end

  def select_tipo_composicao_siurb_infra(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo }</option>" if objeto and objeto.tipo
    html << "<option value='Infraestrutura'>Infraestrutura</option>"
    html << "<option value='Composições Auxiliares'>Composições Auxiliares</option>"
    html.html_safe
  end

  def select_tipo_composicao_iopes(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_iopes_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESIOPES.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_iopes_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_sudecap(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_sudecap_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESSUDECAP.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_sudecap_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_sbc(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_sbc_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESSBC.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_sbc_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_emop(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_cpos_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESEMOP.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_emop_por_extenso }</option>"}
    html.html_safe
  end

   def select_tipo_composicao_cpos(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_cpos_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESCPOS.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_cpos_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_fde(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_fde_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESFDE.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_fde_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_sco(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_sco_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESSCO.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_sco_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_agetop_civil(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_agetop_civil_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESAGETOPCIVIL.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_agetop_civil_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_caema(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_caema_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESCAEMA.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_caema_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_embasa(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_embasa_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESEMBASA.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_embasa_por_extenso }</option>"}
    html.html_safe
  end

  def select_tipo_composicao_caern(objeto = nil)
    html = ""
    html << "<option value='#{ objeto.tipo }'>#{ objeto.tipo.tipo_de_composicao_caern_por_extenso }</option>" if objeto and objeto.tipo
    TIPOSDECOMPOSICOESCAERN.each {|tipo| html << "<option value='#{ tipo }'>#{ tipo } - #{ tipo.tipo_de_composicao_caern_por_extenso }</option>"}
    html.html_safe
  end

  def select_regioes_setop(objeto = nil)
    html = ""
    html << "<option value='#{ objeto }'>#{ objeto.setop_regioes_em_texto }</option>" if objeto
    SETOPREGIOES.each {|regiao| html << "<option value='#{ regiao }'>#{ regiao.setop_regioes_em_texto }</option>"}
    html.html_safe
  end

  def select_regioes_sbc(objeto = nil)
    html = ""
    html << "<option value='#{ objeto }'>#{ objeto.regioes_sbc_to_uf.uf_to_nome }</option>" if objeto
    REGIOESSBC.each {|regiao| html << "<option value='#{ regiao.regioes_sbc_to_uf }'>#{ regiao.regioes_sbc_to_uf.uf_to_nome }</option>"}
    html.html_safe
  end

  def select_order
    "<option value='descricao'>Descrição</option><option value='codigo'>Código</option><option value='tipo'>Tipo</option>".html_safe
  end

  def select_order_seinfra
    "<option value='tipo_codigo'>Tipo</option><option value='descricao'>Descrição</option><option value='codigo'>Código</option>".html_safe
  end

  def select_permissao(pda)
    html = ""
    case pda
      when 0 then html << "<option value='0'>Não Tem Acesso</option>"
      when 1 then html << "<option value='1'>Pode Ver e Usar</option>"
      when 2 then html << "<option value='2'>Pode Ver, Usar e Editar</option>"
      when 3 then html << "<option value='3'>Pode Ver, Usar, Editar e Excuir</option>"
    end
    html << "<option value='2'>Pode Ver, Usar e Editar</option><option value='1'>Pode Ver e Usar</option><option value='3'>Pode Ver, Usar, Editar e Excuir</option><option value='0'>Não Tem Acesso</option>"
    html.html_safe
  end

  def select_datas_form_tag(banco, data = nil, com_ultima_disponivel = false)
    datas = Banco::Busca.banco_lista_de_datas(banco)
    html = ""
    html << "<option value='#{ data }'>#{ data }</option>" if data
    Banco::Busca.banco_lista_de_datas(banco).each.with_index(0) do |data, index|
      if com_ultima_disponivel
        if index == 1
          html << "<option value='ultima'>Última data disponível</option>"
          # html << "<option value='todas'>Todas as datas</option>"
        end
      end
      html << "<option value='#{ data }'>#{ data }</option>"
    end
    html.html_safe
  end

  def select_atalhos_form_tag(atalho_padrao)
    html = "<option value='#{ atalho_padrao }'>#{ atalho_padrao.atalhos_to_nome }</option>"
    CODIGOSDETECLADO.each {|atalho| html << "<option value='#{ atalho }'>#{ atalho.atalhos_to_nome }</option>"}
    html.html_safe
  end

  def select_centro_de_custo(lista, centro_de_custo = nil)
    html = ""
    if centro_de_custo
      html << "<option value='#{ centro_de_custo }'>#{ centro_de_custo }</option>"
    else
      html << "<option value=''>--</option>"
    end
    lista.each {|centro| html << "<option value='#{ centro }'>#{ centro }</option>"}
    html.html_safe
  end

  # def classe_atualizacao_do_banco(banco)
  #   case banco
  #   when "SINAPI" then DATASSINAPI
  #   when "SICRO"  then DATASSICRO
  #   end
  # end

  def option_select_estado(estado = nil)
    html = ""
    if estado
      html << "<option value='#{ estado }'>#{ estado.uf_to_nome }</option>"
    elsif @usuario_logado and @usuario_logado.end_estado
      html << "<option value='#{ @usuario_logado.end_estado }'>#{ @usuario_logado.end_estado.uf_to_nome }"
    end
    ESTADOS.each {|e| html << "<option value='#{ e }'>#{ e.uf_to_nome }</option>"}
    html.html_safe
  end

  def option_select_estado_com_nulo(estado = nil)
    html = ""
    if estado
      html << "<option value='#{ estado }'>#{ estado.uf_to_nome }</option>"
    else
      html << "<option value=''>Estado"
    end
    ESTADOS.each {|e| html << "<option value='#{ e }'>#{ e.uf_to_nome }</option>"}
    html.html_safe
  end

  def option_select_cliente_com_nulo(cliente_id = nil)
    if cliente_id
      cliente = Cliente.where(id: cliente_id).first
      html = "<option value='#{ cliente_id }'>#{ cliente.nome }</option>" if cliente
    else
      html = "<option value=''>Cliente</option>"
    end
    Cliente.que_posso_ver(@usuario_logado).each {|cliente| html << "<option value='#{ cliente.id }'>#{ cliente.nome }</option>"}
    html.html_safe
  end

  def option_select_empreiteiro
    html = ""
    @empresa_logada.empreiteiros.valido.each {|empreiteiro| html << "<option value='#{ empreiteiro.id }'>#{ empreiteiro.nome }</option>" unless @orcamento.empreiteiros.include? empreiteiro.id.to_s}
    html.html_safe
  end

  def option_select_empreiteiro_no_orcamento(empreiteiro_id = nil)
    if empreiteiro_id
      if empreiteiro_id == "todos"
        html = "<option value=''>Todos</option>"
      else
        empreiteiro = Empreiteiro.where(id: empreiteiro_id).first
        html = "<option value='#{ empreiteiro_id }'>#{ empreiteiro.nome }</option>" if empreiteiro
      end
    else
      html = "<option value=''>Empreiteiro</option>"
    end
    @orcamento.empreiteiros.each do |empreiteiro_id|
      empreiteiro = Empreiteiro.where(id: empreiteiro_id).first
      html << "<option value='#{ empreiteiro.id }'>#{ empreiteiro.nome }</option>" if empreiteiro
    end
    html.html_safe
  end

  def option_select_dono_com_nulo
    html = "<option value=''>Dono</option>"
    @empresa_logada.usuarios.asc(:nome).each {|cliente| html << "<option value='#{ cliente.id }'>#{ cliente.nome }</option>"}
    html.html_safe
  end

  def error_messages(objeto, html="")
    if objeto.errors.any?
      html << "<div class='alert alert-danger alert-dark'>"
      objeto.errors.full_messages.each do |msg|
        html << "#{ msg }<br>"
      end
      html <<   "</div>"
    end
    html.html_safe
  end

  def modal_header(titulo)
    "<div class='modal-header'>
      <button aria-hidden='true' data-dismiss='modal' class='close' type='button'>&times;</button>
      <h3 id='myModalLabel'>#{titulo}</h3>
    </div>".html_safe
  end

  def modal_footer(acao, relatorio = false)
    "<div class='modal-footer'>
      <a data-dismiss='modal' class='btn'>Cancelar</a>
      <button class='btn btn-primary' #{relatorio ? "" : "data-disable-with='Aguarde...'"}>#{acao}</button>
    </div>".html_safe
  end

  def salvar_lista(link)
    "<tr>
      <td class='right' colspan='30'>
        #{ link_to "Cancelar", link, class: "btn" } &nbsp;
        #{ submit_tag "Salvar", class: "btn btn-primary", "data-disable-with" => 'Aguarde...' }
      </td>
    </tr>".html_safe
  end

  def select_pais(pais)
    if pais
      html = "<option value='#{ pais }'>#{ pais }</option>"
    else
      html = "<option value=''>--</option>"
    end
    html <<  "<option value='Afeganistão'>Afeganistão</option>
              <option value='África do Sul'>África do Sul</option>
              <option value='Albânia'>Albânia</option>
              <option value='Alemanha'>Alemanha</option>
              <option value='América Samoa'>América Samoa</option>
              <option value='Andorra'>Andorra</option>
              <option value='Angola'>Angola</option>
              <option value='Anguilla'>Anguilla</option>
              <option value='Antartida'>Antartida</option>
              <option value='Antigua'>Antigua</option>
              <option value='Antigua e Barbuda'>Antigua e Barbuda</option>
              <option value='Arábia Saudita'>Arábia Saudita</option>
              <option value='Argentina'>Argentina</option>
              <option value='Aruba'>Aruba</option>
              <option value='Australia'>Australia</option>
              <option value='Austria'>Austria</option>
              <option value='Bahamas'>Bahamas</option>
              <option value='Bahrain'>Bahrain</option>
              <option value='Barbados'>Barbados</option>
              <option value='Bélgica'>Bélgica</option>
              <option value='Belize'>Belize</option>
              <option value='Bermuda'>Bermuda</option>
              <option value='Bhutan'>Bhutan</option>
              <option value='Bolívia'>Bolívia</option>
              <option value='Botswana'>Botswana</option>
              <option value='Brasil'>Brasil</option>
              <option value='Brunei'>Brunei</option>
              <option value='Bulgária'>Bulgária</option>
              <option value='Burundi'>Burundi</option>
              <option value='Cabo Verde'>Cabo Verde</option>
              <option value='Camboja'>Camboja</option>
              <option value='Canadá'>Canadá</option>
              <option value='Chade'>Chade</option>
              <option value='Chile'>Chile</option>
              <option value='China'>China</option>
              <option value='Cingapura'>Cingapura</option>
              <option value='Colômbia'>Colômbia</option>
              <option value='Djibouti'>Djibouti</option>
              <option value='Dominicana'>Dominicana</option>
              <option value='Emirados Árabes'>Emirados Árabes</option>
              <option value='Equador'>Equador</option>
              <option value='Espanha'>Espanha</option>
              <option value='Estados Unidos'>Estados Unidos</option>
              <option value='Fiji'>Fiji</option>
              <option value='Filipinas'>Filipinas</option>
              <option value='Finlândia'>Finlândia</option>
              <option value='França'>França</option>
              <option value='Gabão'>Gabão</option>
              <option value='Gaza Strip'>Gaza Strip</option>
              <option value='Ghana'>Ghana</option>
              <option value='Gibraltar'>Gibraltar</option>
              <option value='Granada'>Granada</option>
              <option value='Grécia'>Grécia</option>
              <option value='Guadalupe'>Guadalupe</option>
              <option value='Guam'>Guam</option>
              <option value='Guatemala'>Guatemala</option>
              <option value='Guernsey'>Guernsey</option>
              <option value='Guiana'>Guiana</option>
              <option value='Guiana Francesa'>Guiana Francesa</option>
              <option value='Haiti'>Haiti</option>
              <option value='Holanda'>Holanda</option>
              <option value='Honduras'>Honduras</option>
              <option value='Hong Kong'>Hong Kong</option>
              <option value='Hungria'>Hungria</option>
              <option value='Ilha Cocos (Keeling)'>Ilha Cocos (Keeling)</option>
              <option value='Ilha Cook'>Ilha Cook</option>
              <option value='Ilha Marshall'>Ilha Marshall</option>
              <option value='Ilha Norfolk'>Ilha Norfolk</option>
              <option value='Ilhas Turcas e Caicos'>Ilhas Turcas e Caicos</option>
              <option value='Ilhas Virgens'>Ilhas Virgens</option>
              <option value='Índia'>Índia</option>
              <option value='Indonésia'>Indonésia</option>
              <option value='Inglaterra'>Inglaterra</option>
              <option value='Irã'>Irã</option>
              <option value='Iraque'>Iraque</option>
              <option value='Irlanda'>Irlanda</option>
              <option value='Irlanda do Norte'>Irlanda do Norte</option>
              <option value='Islândia'>Islândia</option>
              <option value='Israel'>Israel</option>
              <option value='Itália'>Itália</option>
              <option value='Iugoslávia'>Iugoslávia</option>
              <option value='Jamaica'>Jamaica</option>
              <option value='Japão'>Japão</option>
              <option value='Jersey'>Jersey</option>
              <option value='Kirgizstão'>Kirgizstão</option>
              <option value='Kiribati'>Kiribati</option>
              <option value='Kittsnev'>Kittsnev</option>
              <option value='Kuwait'>Kuwait</option>
              <option value='Laos'>Laos</option>
              <option value='Lesotho'>Lesotho</option>
              <option value='Líbano'>Líbano</option>
              <option value='Líbia'>Líbia</option>
              <option value='Liechtenstein'>Liechtenstein</option>
              <option value='Luxemburgo'>Luxemburgo</option>
              <option value='Maldivas'>Maldivas</option>
              <option value='Malta'>Malta</option>
              <option value='Marrocos'>Marrocos</option>
              <option value='Mauritânia'>Mauritânia</option>
              <option value='Mauritius'>Mauritius</option>
              <option value='México'>México</option>
              <option value='Moçambique'>Moçambique</option>
              <option value='Mônaco'>Mônaco</option>
              <option value='Mongólia'>Mongólia</option>
              <option value='Namíbia'>Namíbia</option>
              <option value='Nepal'>Nepal</option>
              <option value='Netherlands Antilles'>Netherlands Antilles</option>
              <option value='Nicarágua'>Nicarágua</option>
              <option value='Nigéria'>Nigéria</option>
              <option value='Noruega'>Noruega</option>
              <option value='Nova Zelândia'>Nova Zelândia</option>
              <option value='Omã'>Omã</option>
              <option value='Panamá'>Panamá</option>
              <option value='Paquistão'>Paquistão</option>
              <option value='Paraguai'>Paraguai</option>
              <option value='Peru'>Peru</option>
              <option value='Polinésia Francesa'>Polinésia Francesa</option>
              <option value='Polônia'>Polônia</option>
              <option value='Portugal'>Portugal</option>
              <option value='Qatar'>Qatar</option>
              <option value='Quênia'>Quênia</option>
              <option value='República Dominicana'>República Dominicana</option>
              <option value='Romênia'>Romênia</option>
              <option value='Rússia'>Rússia</option>
              <option value='Santa Helena'>Santa Helena</option>
              <option value='Santa Kitts e Nevis'>Santa Kitts e Nevis</option>
              <option value='Santa Lúcia'>Santa Lúcia</option>
              <option value='Santo Vicente e Grenadines'>Santo Vicente e Grenadines</option>
              <option value='São Vicente'>São Vicente</option>
              <option value='Singapura'>Singapura</option>
              <option value='Síria'>Síria</option>
              <option value='Spiemich'>Spiemich</option>
              <option value='Sudão'>Sudão</option>
              <option value='Suécia'>Suécia</option>
              <option value='Suiça'>Suiça</option>
              <option value='Suriname'>Suriname</option>
              <option value='Swaziland'>Swaziland</option>
              <option value='Tailândia'>Tailândia</option>
              <option value='Taiwan'>Taiwan</option>
              <option value='Tchecoslováquia'>Tchecoslováquia</option>
              <option value='Tonga'>Tonga</option>
              <option value='Trinidad e Tobago'>Trinidad e Tobago</option>
              <option value='Turksccai'>Turksccai</option>
              <option value='Turquia'>Turquia</option>
              <option value='Tuvalu'>Tuvalu</option>
              <option value='Uruguai'>Uruguai</option>
              <option value='Vanuatu'>Vanuatu</option>
              <option value='Wallis e Fortuna'>Wallis e Fortuna</option>
              <option value='West Bank'>West Bank</option>
              <option value='Yémen'>Yémen</option>
              <option value='Zaire'>Zaire</option>
              <option value='Zimbabwe'>Zimbabwe</option>"
    html.html_safe
  end
end
