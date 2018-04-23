ComposicaoId = ->
  jQuery('#composicao_id').attr("composicao_id")

TextoBanco = (banco) ->
  if banco == 'Emp'
    return 'Próprio'
  else
    return banco

TextoClassCouI = (classe) ->
  if classe == 'composicao'
    return 'tr_item tr_composicao success'
  else if classe == 'insumo'
    return 'tr_item tr_insumo warning'

AtualizarJavaScript = ->
  SalvarNewClick()
  SalvarNewEnter()
  CancelarNewItem()
  jQuery(".td_excluir").html "<a class='remove-box' href='#' title='Excluir'><i class='flaticon-garbage1 icone-20'></i></a>"
  RemoverIten()
  CalcularTotais()

jQuery(document).ready ($) ->
  jQuery('.add-composicao-sinapi').click ->
    AddItem 'composicao', 'SINAPI'
  jQuery('.add-composicao-emp').click ->
    AddItem 'composicao', 'Emp'
  jQuery('.add-insumo-sinapi').click ->
    AddItem 'insumo', 'SINAPI'
  jQuery('.add-insumo-emp').click ->
    AddItem 'insumo', 'Emp'

jQuery(document).ready ($) ->
  jQuery('.add-item').click ->
    classe = jQuery(this).attr("classe")
    banco  = jQuery(this).attr("banco")
    n = jQuery('.tr_item').length + 1
    box_html = jQuery("<tr class='#{TextoClassCouI(classe)}' id='tr_item_#{ n }' nitem=#{ n } classe='#{classe}' banco='#{ banco }'' id_do_item=''>
                        <td class='td_banco'>#{ TextoBanco(banco) }</td>
                        <td class='td_codigo'><input class='input-small input_codigo salvar_new_enter' name='input_codigo' placeholder='Código' type='text' value=''></td>
                        <td class='td_descricao'><input class='input-block-level input_descricao salvar_new_enter' placeholder='Descrição' type='text' value=''></td>
                        <td class='td_tipo'></td>
                        <td class='td_unidade center'></td>
                        <td class='td_pr_un_pnd right'></td>
                        <td class='td_pr_un_pnd right'></td>
                        <td class='td_quantidade right'><input class='input-block-level input_quantidade right salvar_new_enter' name='input_quantidade' placeholder='Quantidade' type='text' value=''></td>
                        <td class='td_pr_pnd right'></td>
                        <td class='td_pr_pd right'><a class='salvar_new btn btn-primary'>Salvar</a></td>
                        <td class='td_excluir center'><a class='cancelar_new btn btn-danger'>Cancelar</a></td>
                      </tr>
                      <tr id='autocompletar_resposta_#{ n }' nitem=#{ n } class='autocompletar_resposta'></tr>")
    box_html.hide()
    jQuery("#th").fadeIn 'slow'
    if n == 1
      jQuery('#table_itens tbody').html(box_html)
    else
      jQuery('#table_itens tr').last().after(box_html)
    #AtualizarJavaScript()
    box_html.fadeIn 'slow'
    jQuery('.input_codigo').keyup ->
      AutoCompletarkeyup jQuery(this), 'codigo'
    jQuery('.input_descricao').keyup ->
      AutoCompletarkeyup jQuery(this), 'descricao'
    SalvarNewClick()
    SalvarNewEnter()
    CancelarNewItem()

  
SelectItem = (nitem, id, codigo, descricao) ->
  document.getElementById("item_id_#{nitem}").value = id
  document.getElementById("item_codigo_#{nitem}").value = codigo
  document.getElementById("item_descricao_#{nitem}").value = descricao
  jQuery('.label_search').fadeOut()


# AutoCompletar Composicao oi Insumo
jQuery(document).ready ->
  jQuery('.input_codigo').keyup ->
    AutoCompletarkeyup jQuery(this), 'codigo'
  jQuery('.input_descricao').keyup ->
    AutoCompletarkeyup jQuery(this), 'descricao'

AutoCompletarkeyup = (input, field) ->
  tr = input.parent().parent()
  n = tr.attr("nitem")
  banco = tr.attr("banco")
  classe = tr.attr("classe")
  filtro = input.val()
  if filtro.length > 1
    link = "/banco/emp/composicoes/autocompletar.json?field=#{ field }&id=#{ ComposicaoId() }&banco=#{ banco }&classe=#{ classe }&nitem=#{ n }&filtro=#{ filtro}"
    jQuery.getJSON link, (data) ->
      if data.length == 0
        html = "<tbody><td colspan='11'>Pesquisa sem resultados!"
      else
        html = "<td colspan='11'>
                  <table class='table table-hover autocomplete_resposta'>
                    <thead>
                      <tr>
                        <th style='background-color: #303030'>Código</th>
                        <th style='background-color: #303030'>Descrição</th>
                        <th style='background-color: #303030'>Tipo</th>
                        <th class='center' style='background-color: #303030'>Unidade</th>
                        <th class='right' style='background-color: #303030'>Valor Não Desonerado</th>
                        <th class='right' style='background-color: #303030'>Valor Desonerado</th>
                      </tr>
                    </thead>
                  <tbody>"
      jQuery.each data, (chave, valor) ->
        html = html + "<tr class='select_item pointer' id_do_item='#{ valor['id'] }' codigo='#{ valor['codigo'] }' descricao='#{ valor['descricao'] }' tipo='#{ valor['tipo'] }' unidade='#{ valor['unidade'] }'>
                        <td>#{ valor['codigo'] }</td>
                        <td>#{ valor['descricao'] }</td>
                        <td>#{ valor['tipo'] }</td>
                        <td class='center'>#{ valor['unidade'] }</td>
                        <td class='right'>#{ valor['pnd'] }</td>
                        <td class='right'>#{ valor['pd'] }</td>
                      </tr>"
        return
      html = html + "</tbody>
                  </table>
                <td>"
      jQuery("#autocompletar_resposta_#{ n }").html html

      
      # Selecionar Item
      jQuery('.select_item').click ->
        escolhido = jQuery(this)
        modificar_tr = jQuery("#tr_item_#{ n }")
        
        modificar_tr.find('.input_codigo').val      escolhido.attr('codigo')
        modificar_tr.find('.input_descricao').val   escolhido.attr('descricao')
        modificar_tr.find('.td_tipo').html          escolhido.attr('tipo')
        modificar_tr.find('.td_unidade').html       escolhido.attr('unidade')
        modificar_tr.attr 'id_do_item',             escolhido.attr('id_do_item')
        modificar_tr.attr 'codigo',                 escolhido.attr('codigo')
        modificar_tr.attr 'descricao',              escolhido.attr('descricao')

        jQuery("#autocompletar_resposta_#{ n }").html ""
        jQuery("input[name=input_quantidade]").focus()


# Salvar Composição ou Insumo
SalvarNewClick = ->
  jQuery('.salvar_new').click ->
    SalvarNew jQuery(this).parent().parent()
SalvarNewEnter = ->
  jQuery('.salvar_new_enter').on 'keyup', (e) ->
    if e.which == 13
      SalvarNew jQuery(this).parent().parent()
SalvarNew = (tr) ->
  classe =      tr.attr('classe')
  banco =       tr.attr('banco')
  id_do_item =  tr.attr('id_do_item')
  quantidade =  tr.find('.input_quantidade').val()
  codigo =      tr.attr('codigo')
  descricao =   tr.attr('descricao')

  if ValidarDadosDoNovoItem(id_do_item, quantidade)
    link = "/banco/emp/composicoes/add_subitem.json?id=#{ ComposicaoId() }&id_do_item=#{ id_do_item }&banco=#{ banco }&quantidade=#{ quantidade }&classe=#{ classe }"
    tr.find(".salvar_new").css "display", "none"
    tr.find(".cancelar_new").css "display", "none"
    tr.find(".salvar_edit").css "display", "none"
    tr.find(".cancelar_edit").css "display", "none"
    tr.find(".td_pr_pnd").html ""
    tr.find(".td_pr_pd").html "CALCULANDO"
    tr.find(".td_codigo").html codigo
    tr.find(".td_descricao").html descricao
    tr.find(".td_quantidade").html quantidade
    tr.attr "quantidade", quantidade
    jQuery.getJSON link, (data) ->
      jQuery.each data, (chave, valor) ->
        if chave == 'q'
          tr.attr "quantidade", valor
          tr.find(".td_quantidade").html "<a class='editar_quantidades' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(valor) }</a>"
        else if chave == 'pnd'
          tr.attr "pr_un_pnd", valor
          tr.find(".td_pr_un_pnd").html converteFloatMoeda(valor.toFixed(2))
        else if chave == 'pd'
          tr.attr "pr_un_pd", valor
          tr.find(".td_pr_un_pd").html converteFloatMoeda(valor.toFixed(2))
        else if chave == 'pnd_total'
          tr.attr "pr_pnd", valor
          tr.find(".td_pr_pnd").html converteFloatMoeda(valor.toFixed(2))
        else if chave == 'pd_total'
          tr.attr "pr_pd", valor
          tr.find(".td_pr_pd").html converteFloatMoeda(valor.toFixed(2))
        else if chave == 'contador'
          tr.attr "contador", valor

      AtualizarJavaScript()
      EditarQuantidades()
  
# Fim Salvar Composição ou Insumo

ValidarDadosDoNovoItem = (id_do_item, quantidade) ->
  if id_do_item == ''
    alert 'Você ainda não SELECIONOU um Item'
    false
  else if quantidade == ''
    alert 'Você de informar qual é a QUANTIDADE'
    false
  else
    true

CancelarNewItem = ->
  jQuery('.cancelar_new').click ->
    jQuery('.autocompletar_resposta').remove()
    jQuery(this).parent().parent().remove()
    AtualizarJavaScript()


jQuery('.remove-box').click ->
  tr =        jQuery(this).parent().parent()
  tr_n =      tr.attr("nitem")
  classe =    tr.attr "classe"
  contador =  tr.attr "contador"

  jQuery('.autocompletar_resposta').remove()
  tr.remove()
  link = "/banco/emp/composicoes/excluir_subitem.json?id=#{ ComposicaoId() }&contador=#{ contador }&classe=#{ classe }"
  jQuery.getJSON link, (data) ->
  contador_composicao = 0
  contador_insumo = 0
  jQuery(".tr_item").each (index) ->
    n = index + 1
    jQuery(this).attr 'id', "tr_item_#{ n }"
    jQuery(this).attr 'nitem', n
    if jQuery(this).attr("classe") == "composicao"
      jQuery(this).attr "contador", contador_composicao
      contador_composicao = contador_composicao + 1
    else
      jQuery(this).attr "contador", contador_insumo
      contador_insumo = contador_insumo + 1

RemoverIten = ->
  jQuery('.remove-box').click ->
    tr =        jQuery(this).parent().parent()
    tr_n =      tr.attr("nitem")
    classe =    tr.attr "classe"
    contador =  tr.attr "contador"

    jQuery('.autocompletar_resposta').remove()
    tr.remove()
    link = "/banco/emp/composicoes/excluir_subitem.json?id=#{ ComposicaoId() }&contador=#{ contador }&classe=#{ classe }"
    jQuery.getJSON link, (data) ->
    contador_composicao = 0
    contador_insumo = 0
    jQuery(".tr_item").each (index) ->
      n = index + 1
      jQuery(this).attr 'id', "tr_item_#{ n }"
      jQuery(this).attr 'nitem', n
      if jQuery(this).attr("classe") == "composicao"
        jQuery(this).attr "contador", contador_composicao
        contador_composicao = contador_composicao + 1
      else
        jQuery(this).attr "contador", contador_insumo
        contador_insumo = contador_insumo + 1


CalcularTotais = ->
  pr_pnd_total =  0
  pr_pd_total =   0
  
  jQuery(".tr_item").each ->
    tr = jQuery(this)
    quantidade =  parseFloat(tr.attr "quantidade")
    pr_un_pnd =   parseFloat(tr.attr "pr_un_pnd")
    pr_un_pd =    parseFloat(tr.attr "pr_un_pd")

    pr_pnd =  pr_un_pnd * quantidade
    pr_pd =   pr_un_pd  * quantidade

    tr.find(".td_pr_pnd").html(converteFloatMoeda(pr_pnd.toFixed(2)))
    tr.find(".td_pr_pd").html(converteFloatMoeda(pr_pd.toFixed(2)))

    pr_pnd_total =  pr_pnd_total  + pr_pnd
    pr_pd_total =   pr_pd_total   + pr_pd
  
  jQuery(".td_pnd_total").html("R$ #{converteFloatMoeda(pr_pnd_total.toFixed(2))}")
  jQuery(".td_pd_total").html("R$ #{converteFloatMoeda(pr_pd_total.toFixed(2))}")


EditarQuantidades = ->
  jQuery('.editar_quantidades').click ->
    jQuery('.tr_item').each ->
      tr = jQuery(this)
      quantidade = tr.attr "quantidade"
      tr.find(".td_quantidade").html "<div>
                                        <input class='input-small input_quantidade_editar right' name='input_quantidade' placeholder='Quantidade' type='text' value='#{converteFloatMoeda(quantidade)}' style='float: left; width: 45px;>
                                        <div style='float: left;><a class='fechar_input_quantidade pointer' style='vertical-align: text-top;'><i class='icone-18 flaticon-letter-x5'></i></a></div>
                                      </div>"
    SalvarQuantidade()
    FecharEditarQuantidades()

jQuery('.editar_quantidades').click ->
  jQuery('.tr_item').each ->
    tr = jQuery(this)
    quantidade = tr.attr "quantidade"
    tr.find(".td_quantidade").html "<div>
                                      <input class='input-small input_quantidade_editar right' name='input_quantidade' placeholder='Quantidade' type='text' value='#{converteFloatMoeda(quantidade)}' style='float: left; width: 45px;>
                                      <div style='float: left;><a class='fechar_input_quantidade pointer' style='vertical-align: text-top;'><i class='icone-18 flaticon-letter-x5'></i></a></div>
                                    </div>"
  SalvarQuantidade()
  FecharEditarQuantidades()
  

FecharEditarQuantidades = ->
  jQuery('.fechar_input_quantidade').click ->
    jQuery('.tr_item').each ->
      tr = jQuery(this)
      quantidade = tr.attr "quantidade"
      tr.find(".td_quantidade").html "<a class='editar_quantidades' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(quantidade) }</a>"
    EditarQuantidades()

# Salvar Quantidade dos Itens
SalvarQuantidade = ->
  jQuery('.input_quantidade_editar').keyup ->
    tr = jQuery(this).parent().parent().parent()
    td = jQuery(this).parent().parent()
    contador = tr.attr "contador"
    classe = tr.attr "classe"
    quantidade = parseFloat(jQuery(this).val().replace(",", "."))
    if isNaN(quantidade)
      quantidade = 0
    tr.attr "quantidade", quantidade
    CalcularTotais()

    link = "/banco/emp/composicoes/update_quantidade.json?id=#{ ComposicaoId() }&contador=#{ contador }&quantidade=#{ quantidade }&classe=#{ classe }"
    jQuery.getJSON link, (data) ->

