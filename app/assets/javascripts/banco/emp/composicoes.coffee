jQuery ->
  AtualizarJavaScript()

AtualizarJavaScript = ->
  # AtivarBotaoDeExclusao()
  ChecarExistenciaDosGrupos()
  EditarCoeficientes()
  FecharFormQuantidade()
  # AddItem()

ComposicaoId = ->
  jQuery('#composicao_id').attr("composicao_id")

TextoBanco = (banco, classe) ->
  if classe == "Tempo Fixo"
    "SICRO3"
  else if banco == 'Emp'
    return 'Próprio'
  else
    return banco

TextoClasse = (classe) ->
  if classe == 'insumo'
    return 'Insumo'
  else if classe == 'composicao'
    return "Composição"
  else if classe == "Tempo Fixo"
    return "Tempo Fixo"

# AddItem = ->
#   jQuery(document).ready ($) ->
jQuery('.add-item').click ->
  classe = jQuery(this).attr("classe")
  banco  = jQuery(this).attr("banco")

  html = "<div id='modal-select-item' class='modal hide fade in' aria-hidden='false' aria-labelledby='myModalLabel' role='dialog' tabindex='-1' style='width: 900px; position: fixed; left: 50%; top: 100px; margin-left: -450px;' data-classe='#{classe}' data-banco='#{banco}'>
            <input name='utf8' type='hidden' value='✓'>
            <input type='hidden' name='authenticity_token' value='JqsrRfdRus3sVOClYtfx2kVgZs/vdLtyIXgMjsoD1mRbI8M+jCMITDWVLzjBXiJs8xouW6yXIJdyJP4xT7qAyA=='>
            <div class='modal-header'>
              <button aria-hidden='true' data-dismiss='modal' class='close' type='button'>×</button>
              <h3 id='myModalLabel'>Adicionar #{TextoClasse(classe)}</h3>
            </div>
            <div class='modal-body'>
              <h4>Para inserir o item digite um trecho do código ou da descrição</h4>
              <br>
              <div class='row-fluid'>
                <div class='span6'>
                  <label for='input_add_item_codigo'><b>Código</b> da base #{TextoBanco(banco, classe)}</label>
                  <span class='field'>
                    <input type='text' name='input_add_item_codigo' id='input_add_item_codigo' value='' class='input-block-level'>
                  </span>
                </div>
                <div class='span6'>
                  <label for='input_add_item_descricao'><b>Descrição</b> da base #{TextoBanco(banco, classe)}</label>
                  <span class='field'>
                    <input type='text' name='input_add_item_descricao' id='input_add_item_descricao' value='' class='input-block-level'>
                  </span>
                </div>
              </div>
              <div id='autocompletar_resposta'></div>
              <div id='final_do_form'></div>
            </div>
            <div class='modal-footer'>
              <a data-dismiss='modal' class='btn'>Cancelar</a>
              <button class='salvar_new btn btn-primary data-disable-with='Aguarde...'>Salvar</button>
            </div>
          </div>"
  jQuery('#new_modal').html(html)
  jQuery('#modal-select-item').modal('show');
  jQuery('#input_add_item_codigo').keyup ->
    AutoCompletarkeyup(jQuery(this), 'codigo', banco, classe)
  jQuery('#input_add_item_descricao').keyup ->
    AutoCompletarkeyup(jQuery(this), 'descricao', banco, classe)
  SalvarNewClick()


AutoCompletarkeyup = (input, field, banco, classe) ->
  filtro = input.val()
  if filtro.length > 1
    jQuery("#autocompletar_resposta").html "Buscando ..."
    jQuery("#final_do_form").html ""
    link = "/banco/emp/composicoes/modelo_sicro_3_autocompletar.json?field=#{ field }&id=#{ ComposicaoId() }&banco=#{ banco }&classe=#{ classe }&filtro=#{ filtro}"
    jQuery.getJSON link, (data) ->
      if data.length == 0
        html = "<span style='color: #ff0000;'>Pesquisa sem resultados!</span>"
      else if data.length == 1
        if classe == "insumo"
          html = "<span style='color: #3cb371;'>#{data.length} insumo encontrado</span>"
        else
          html = "<span style='color: #3cb371;'>#{data.length} composição encontrada</span>"
      else
        if classe == "insumo"
          html = "<span style='color: #3cb371;'>#{data.length} insumos encontrados</span>"
        else
          html = "<span style='color: #3cb371;'>#{data.length} composições encontradas</span>"
      
      if data.length > 0
        if classe == "insumo"
          html = html + "<table class='table table-hover autocomplete_resposta'>
                          <tr>
                            <th style='background-color: #303030'>Código</th>
                            <th style='background-color: #303030'>Data</th>
                            <th style='background-color: #303030'>Descrição</th>
                            <th style='background-color: #303030'>Tipo</th>
                            <th class='center' style='background-color: #303030'>Unidade</th>
                            <th class='right' style='background-color: #303030'>Valor Não Desonerado</th>
                            <th class='right' style='background-color: #303030'>Valor Desonerado</th>
                            <th class='right' style='background-color: #303030'>Valor Não Desonerado Improdutivo</th>
                            <th class='right' style='background-color: #303030'>Valor Desonerado Improdutivo</th>
                          </tr>"
        else
          html = html + "<table class='table table-hover autocomplete_resposta'>
                          <tr>
                            <th style='background-color: #303030'>Código</th>
                            <th style='background-color: #303030'>Data</th>
                            <th style='background-color: #303030'>Descrição</th>
                            <th class='center' style='background-color: #303030'>Unidade</th>
                            <th class='right' style='background-color: #303030'>Valor Não Desonerado</th>
                            <th class='right' style='background-color: #303030'>Valor Desonerado</th>
                          </tr>"
      jQuery.each data, (chave, valor) ->
        if classe == "insumo"
          html = html +   "<tr class='select_item pointer' data-id='#{ valor['id'] }' data-codigo='#{ valor['codigo'] }' data-descricao='#{ valor['descricao'] }' data-tipo='#{ valor['tipo'] }' data-tipo_por_extenso='#{ valor['tipo_por_extenso'] }' data-pnd='#{ valor['pnd'] }' data-pd='#{ valor['pd'] }' data-pndi='#{ valor['pndi'] }' data-pdi='#{ valor['pdi'] }' data-unidade='#{ valor['unidade'] }'>
                            <td>#{ valor['codigo'] }</td>
                            <td>#{ valor['data'] }</td>
                            <td>#{ valor['descricao'] }</td>
                            <td>#{ valor['tipo_por_extenso'] }</td>
                            <td class='center'>#{ valor['unidade'] }</td>
                            <td class='right'>#{ valor['pnd'] }</td>
                            <td class='right'>#{ valor['pd'] }</td>
                            <td class='right'>#{ valor['pndi'] }</td>
                            <td class='right'>#{ valor['pdi'] }</td>
                          </tr>"
        else
          html = html +   "<tr class='select_item pointer' data-id='#{ valor['id'] }' data-codigo='#{ valor['codigo'] }' data-descricao='#{ valor['descricao'] }' data-unidade='#{ valor['unidade'] }'data-pnd='#{ valor['pnd'] }' data-pd='#{ valor['pd'] }'>
                            <td>#{ valor['codigo'] }</td>
                            <td>#{ valor['data'] }</td>
                            <td>#{ valor['descricao'] }</td>
                            <td class='center'>#{ valor['unidade'] }</td>
                            <td class='right'>#{ valor['pnd'] }</td>
                            <td class='right'>#{ valor['pd'] }</td>
                          </tr>"
        return
      html = html +     "</table>"
      jQuery("#autocompletar_resposta").html html
      jQuery("#final_do_form").html ""
      
      # Selecionar Item
      jQuery('.select_item').click ->
        escolhido = jQuery(this)
        form = jQuery("#modal-select-item")
        
        form.find('#input_add_item_codigo').val     escolhido.attr('data-codigo')
        form.find('#input_add_item_descricao').val  escolhido.attr('data-descricao')
        form.attr 'data-tipo',                      escolhido.attr('data-tipo')
        form.attr 'data-id',                        escolhido.attr('data-id')
        form.attr 'data-codigo',                    escolhido.attr('data-codigo')
        form.attr 'data-pnd',                       escolhido.attr('data-pnd')
        form.attr 'data-pd',                        escolhido.attr('data-pd')
        form.attr 'data-pndi',                      escolhido.attr('data-pndi')
        form.attr 'data-pdi',                       escolhido.attr('data-pdi')
        form.attr 'data-descricao',                 escolhido.attr('data-descricao')
        form.attr 'data-unidade',                   escolhido.attr('data-unidade')

        if classe == "insumo" && escolhido.attr('data-tipo') == "1"
          html = "Unidade: <b>#{escolhido.attr('data-unidade')}</b>
                  <br>
                  Preço Não Desonerado: <b>#{escolhido.attr('data-pnd')}</b> - Preço Não Desonerado Improdutivo: <b>#{escolhido.attr('data-pndi')}</b>
                  <br>
                  Preço Desonerado Improdutivo: <b>#{escolhido.attr('data-pd')}</b> - Preço Desonerado Improdutivo: <b>#{escolhido.attr('data-pdi')}</b>
                  <div class='row-fluid'>
                    <div class='span4'>
                      <label for='input_add_item_coeficiente'><b>Quantidade</b></label>
                      <span class='field'>
                        <input type='text' name='input_add_item_coeficiente' id='input_add_item_coeficiente' value='' class='input-block-level salvar_new_enter'>
                      </span>
                    </div>
                    <div class='span4'>
                      <label for='input_add_item_operativa'><b>Utilização Operativa</b></label>
                      <span class='field'>
                        <input type='text' name='input_add_item_operativa' id='input_add_item_operativa' value='' class='input-block-level salvar_new_enter'>
                      </span>
                    </div>
                    <div class='span4'>
                      <label for='input_add_item_improdutiva'><b>Utilização Improdutiva</b></label>
                      <span class='field'>
                        <input type='text' name='input_add_item_improdutiva' id='input_add_item_improdutiva' value='' class='input-block-level salvar_new_enter'>
                      </span>
                    </div>
                  </div>"
        else if classe == "Tempo Fixo"
          html = "Unidade: <b>#{escolhido.attr('data-unidade')}</b> - Preço Não Desonerado: <b>#{escolhido.attr('data-pnd')}</b> - Preço Desonerado: <b>#{escolhido.attr('data-pd')}</b>
                  <div class='row-fluid'>
                    <div class='span4'>
                      <label for='input_add_item_coeficiente'><b>Quantidade</b></label>
                      <span class='field'>
                        <input type='text' name='input_add_item_coeficiente' id='input_add_item_coeficiente' value='' class='input-block-level salvar_new_enter'>
                      </span>
                    </div>
                    <div class='span8'>
                      <label for='input_tempo_fixo_select_item'><b>Selecione o Item</b></label>
                      <span class='field'>
                        <select name='input_tempo_fixo_select_item' id='input_tempo_fixo_select_item' class='input-block-level'>"
          jQuery('.item_para_timpo_fixo').each ->
            html = html + "<option value='#{jQuery(this).attr("data-id")}'>#{jQuery(this).attr("data-codigo")} - #{jQuery(this).attr("data-descricao")}</option>"
          html = html + "</select>
                      </span>
                    </div>
                  </div>"
        else
          html = "Unidade: <b>#{escolhido.attr('data-unidade')}</b> - Preço Não Desonerado: <b>#{escolhido.attr('data-pnd')}</b> - Preço Desonerado: <b>#{escolhido.attr('data-pd')}</b>
                  <div class='row-fluid'>
                    <div class='span4'>
                      <label for='input_add_item_coeficiente'><b>Quantidade</b></label>
                      <span class='field'>
                        <input type='text' name='input_add_item_coeficiente' id='input_add_item_coeficiente' value='' class='input-block-level salvar_new_enter'>
                      </span>
                    </div>
                  </div>"

        jQuery("#autocompletar_resposta").html ""
        jQuery("#final_do_form").html html
        jQuery("input[name=input_add_item_coeficiente]").focus()
        SalvarNewEnter()

# Salvar Composição ou Insumo
SalvarNewClick = ->
  jQuery('.salvar_new').click ->
    SalvarNew(jQuery(this).parent().parent())
SalvarNewEnter = ->
  jQuery('.salvar_new_enter').on 'keyup', (e) ->
    if e.which == 13
      SalvarNew(jQuery(this).parent().parent().parent().parent().parent().parent())
SalvarNew = (form) ->
  classe =              form.attr('data-classe')
  banco =               form.attr('data-banco')
  id =                  form.attr('data-id')
  descricao =           form.attr('data-descricao')
  unidade =             form.attr('data-unidade')
  tipo =                form.attr('data-tipo')
  quantidade =          form.find('#input_add_item_coeficiente').val()
  operativa =           form.find('#input_add_item_operativa').val()
  improdutiva =         form.find('#input_add_item_improdutiva').val()
  id_item_tempo_fixo =  form.find('#input_tempo_fixo_select_item').val()
  item_do_tempo_fixo =  jQuery("[data-id='#{id_item_tempo_fixo}']")
  ref_tempo_fixo =      item_do_tempo_fixo.attr("data-codigo")
  codigo =              form.attr('data-codigo')
  pnd =                 form.attr('data-pnd')
  pd =                  form.attr('data-pd')
  pndi =                form.attr('data-pndi')
  pdi =                 form.attr('data-pdi')

  if ValidarDadosDoNovoItem(id, quantidade, operativa, improdutiva, classe, tipo)
    
    if classe == "insumo"
      if tipo == "1"
        html =  "<tr class='item_equipamento item_para_timpo_fixo add_now' data-id='#{id}'>
                  <td class='td_codigo'>                #{codigo}</td>
                  <td class='td_descricao' colspan='2'> #{descricao}</td>
                  <td class='td_quantidade right'>      #{quantidade}</td>
                  <td class='td_operativa right'>       #{operativa}</td>
                  <td class='td_improdutiva right'>     #{improdutiva}</td>
                  <td class='td_pnd right'>             #{pnd}</td>
                  <td class='td_pndi right'>            #{pndi}</td>
                  <td class='td_pnd_total right'>       ...CALCULANDO</td>
                  <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
                </tr>"
        jQuery('.tr_th_equipamentos').last().before(html)
      else if tipo == "3"
        html =  "<tr class='item_mao_de_obra item_para_timpo_fixo add_now' data-id='#{id}'>
                  <td class='td_codigo'>                #{codigo}</td>
                  <td class='td_descricao' colspan='2'> #{descricao}</td>
                  <td class='td_quantidade right'>      #{quantidade}</td>
                  <td class='td_unidade center'>        #{unidade}</td>
                  <td class='td_pnd right' colspan='3'> #{pnd}</td>
                  <td class='td_pnd_total right'>       ...CALCULANDO</td>
                  <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
                </tr>"
        jQuery('.tr_th_maos_de_obra').last().before(html)
      else if tipo == "4"
        html =  "<tr class='item_material item_para_timpo_fixo add_now' data-id='#{id}'>
                  <td class='td_codigo'>                #{codigo}</td>
                  <td class='td_descricao' colspan='2'> #{descricao}</td>
                  <td class='td_quantidade right'>      #{quantidade}</td>
                  <td class='td_unidade center'>        #{unidade}</td>
                  <td class='td_pnd right' colspan='3'> #{pnd}</td>
                  <td class='td_pnd_total right'>        ...CALCULANDO</td>
                  <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
                </tr>"
        jQuery('.tr_th_materiais').last().before(html)
      else
        html =  "<tr class='item_outro_tipo item_para_timpo_fixo add_now' data-id='#{id}'>
                  <td class='td_codigo'>                #{codigo}</td>
                  <td class='td_descricao' colspan='2'> #{descricao}</td>
                  <td class='td_quantidade right'>      #{quantidade}</td>
                  <td class='td_unidade center'>        #{unidade}</td>
                  <td class='td_pnd right' colspan='3'> #{pnd}</td>
                  <td class='td_pnd_total right'>        ...CALCULANDO</td>
                  <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
                </tr>"
        jQuery('.tr_th_outros_tipos').last().before(html)
    else if classe == "composicao"
      html =  "<tr class='item_composicao item_para_timpo_fixo add_now' data-id='#{id}'>
                <td class='td_codigo'>                  #{codigo}</td>
                <td class='td_descricao' colspan='2'>   #{descricao}</td>
                <td class='td_quantidade right'>        #{quantidade}</td>
                <td class='td_unidade center'>          #{unidade}</td>
                <td class='td_pnd right' colspan='3'>   #{pnd}</td>
                <td class='td_pnd_total right'>         ...CALCULANDO</td>
                <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
              </tr>"
      jQuery('.tr_th_composicoes').last().before(html)
    else if classe == "Tempo Fixo"
      
      console.log(id_item_tempo_fixo)
      html =  "<tr class='item_tempo_fixo add_now' data-id='#{id}'>
                <td class='td_codigo_tempo_fixo right'> #{item_do_tempo_fixo.attr("data-codigo")}</td>
                <td class='td_descricao'>               #{item_do_tempo_fixo.attr("data-descricao")} - #{descricao}</td>
                <td class='td_codigo'>                  #{codigo}</td>
                <td class='td_quantidade right'>        #{quantidade}</td>
                <td class='td_unidade center'>          #{unidade}</td>
                <td class='td_pnd right' colspan='3'>   #{pnd}</td>
                <td class='td_pnd_total right'>         ...CALCULANDO</td>
                <td class='td_excluir'><i class='flaticon-garbage1 icone-18'></i></td>
              </tr>"
      jQuery('.tr_th_tempos_fixos').last().before(html)
  
    jQuery('#modal-select-item').modal('toggle');

    link = "/banco/emp/composicoes/add_subitem"
    dados = {id: ComposicaoId(), id_do_item: id, banco:  banco, quantidade: quantidade, operativa: operativa, improdutiva: improdutiva, classe: classe, tipo: tipo, ref_tempo_fixo: ref_tempo_fixo}
    jQuery.post link, dados, (data) ->
      tr = jQuery(".add_now")
      tr.removeClass "add_now"
      tr.attr "data-id_intermediario", data.id_intermediario
      tr.attr "data-quantidade", data.q
      tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(data.q.toFixed(7)) }</a>"
      tr.attr "data-pnd_total", data.pnd_total
      tr.find(".td_pnd_total").html converteFloatMoeda(data.pnd_total.toFixed(4))

      AtualizarValoresGerais(jQuery, data)

      AtualizarJavaScript()
      return

ValidarDadosDoNovoItem = (id, quantidade, operativa, improdutiva, classe, tipo) ->
  texto = ""
 
  if id == '' || id == undefined || id == null
    texto = texto + 'SELECIONOU um Item - '
  if quantidade == '' || quantidade == undefined || quantidade == null
    texto = texto + 'informar qual é a Quantidade - '
  if classe == "insumo" && tipo == "1"
    if operativa == '' || operativa == undefined || operativa == null
      texto = texto + 'informar qual é a Utilização Operativa - '
    if improdutiva == '' || improdutiva == undefined || improdutiva == null
      texto = texto + 'informar qual é a Utilização Improdutivo'

  if texto == ""
    return true
  else
    texto = "Você deve " + texto
    alert(texto)
    return false

# Exclusão
@AtivarBotaoDeExclusao = (i) ->
  tr =                i.parent().parent()
  console.log(tr)
  if confirm("Você realmente quer Excluir esta Item: #{tr.attr("data-codigo")} - #{tr.attr("data-descricao")}?")
    id_intermediario =  tr.attr("data-id_intermediario")
    classe =            tr.attr("classe")
    link =              "/banco/emp/composicoes/excluir_subitem.json?id=#{ ComposicaoId() }&id_intermediario=#{ id_intermediario }&classe=#{ classe }"
    jQuery.getJSON link, (data) ->
      AtualizarValoresGerais(jQuery, data)
    tr.remove()
    AtualizarJavaScript()
  return

# Editar Coeficientes
EditarCoeficientes = ->
  jQuery('.editar_coeficientes').click ->
    jQuery('.td_quantidade').each ->
      tr = jQuery(this).parent()
      td = jQuery(this)
      quantidade = tr.attr("data-quantidade")
      html = "<div class='div_quantidade_da_medicao'>
                <input type='text' value='#{converteFloatMoeda(quantidade)}' class='quantidade_da_medicao right' placeholder='Quant.' style='float: left;' id='input_editar_quantidade'>
                <div><a class='link_fechar_inputs pointer' style='vertical-align: text-top;'><i class='icone-18 flaticon-letter-x5'></i></a></div>
              </div>"
      td.html(html)
    AtualizarJavaScript()

FecharFormQuantidade = ->
  jQuery('.link_fechar_inputs').click ->

    dados = {}
    jQuery('.td_quantidade').each (index) ->
      tr = jQuery(this).parent()
      td = jQuery(this)
      quantidade = td.find('#input_editar_quantidade').val()
      tr.attr("data-quantidade", quantidade)
      td.html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ quantidade }</a>"
      tr.find(".td_pnd_total").html "...CALCULANDO"
    jQuery('.item_insumo').each (index) ->
      tr = jQuery(this)
      quantidade = tr.attr('data-quantidade')
      dados = jQuery.extend(dados, {"insumo_#{jQuery(this).attr("data-id_intermediario")}": quantidade});
    jQuery('.item_composicao').each (index) ->
      tr = jQuery(this)
      quantidade = tr.attr('data-quantidade')
      dados = jQuery.extend(dados, {"composicao_#{jQuery(this).attr("data-id_intermediario")}": quantidade});
    jQuery('.item_tempo_fixo').each (index) ->
      tr = jQuery(this)
      quantidade = tr.attr('data-quantidade')
      dados = jQuery.extend(dados, {"tempo_fixo_#{jQuery(this).attr("data-id_intermediario")}": quantidade});
    
    link = "/banco/emp/composicoes/update_quantidade"
    dados = jQuery.extend(dados, {id: ComposicaoId()});

    jQuery.post link, dados, (data) ->
      AtualizarValoresGerais(jQuery, data)
      
      jQuery.each data.equipamentos, (index, x) ->
        tr = jQuery(".item_equipamento[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()

      jQuery.each data.maos_de_obra, (index, x) ->
        tr = jQuery(".item_mao_de_obra[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()

      jQuery.each data.materiais, (index, x) ->
        tr = jQuery(".item_material[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()

      jQuery.each data.composicoes, (index, x) ->
        tr = jQuery(".item_composicao[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()

      jQuery.each data.tempos_fixos, (index, x) ->
        tr = jQuery(".item_tempo_fixo[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()

      jQuery.each data.outros_tipos, (index, x) ->
        tr = jQuery(".item_outro_tipo[data-id_intermediario='#{x.id}']")
        tr.attr "data-quantidade", x.q
        tr.attr "data-pnd_total", x.pnd_total
        tr.find(".td_quantidade").html "<a class='editar_coeficientes' title='Edita Coeficientes' href='#'>#{ converteFloatMoeda(parseFloat(x.q)) }</a>"
        tr.find(".td_pnd_total").html converteFloatMoeda(x.pnd_total)
        AtualizarJavaScript()
    AtualizarJavaScript()

ChecarExistenciaDosGrupos = ->
  # Equipamentos
  if jQuery('.item_equipamento').length == 0
    jQuery(".tr_th_equipamentos").css( "display", "none");
  else
    jQuery('.tr_th_equipamentos').css( "display", "table-row");
  
  # Mãos de Obra
  if jQuery('.item_mao_de_obra').length == 0
    jQuery(".tr_th_maos_de_obra").css( "display", "none");
  else
    jQuery('.tr_th_maos_de_obra').css( "display", "table-row");
  
  # Materiais
  if jQuery('.item_material').length == 0
    jQuery(".tr_th_materiais").css( "display", "none");
  else
    jQuery('.tr_th_materiais').css( "display", "table-row");
  
  # Composições Auxiliares
  if jQuery('.item_composicao').length == 0
    jQuery(".tr_th_composicoes").css( "display", "none");
  else
    jQuery('.tr_th_composicoes').css( "display", "table-row");
  
  # Tempos Fixos
  if jQuery('.item_tempo_fixo').length == 0
    jQuery(".tr_th_tempos_fixos").css( "display", "none");
  else
    jQuery('.tr_th_tempos_fixos').css( "display", "table-row");
  
  # Insumos de Outros Tipos
  if jQuery('.item_outro_tipo').length == 0
    jQuery(".tr_th_outros_tipos").css( "display", "none");
  else
    jQuery('.tr_th_outros_tipos').css( "display", "table-row");

AtualizarValoresGerais = (jQuery, data) ->
  jQuery(".ch_de_eq").html converteFloatMoeda(data.ch_de_eq)
  jQuery(".ch_da_mo").html converteFloatMoeda(data.ch_da_mo)
  jQuery(".che").html converteFloatMoeda(data.che)
  jQuery(".cue").html converteFloatMoeda(data.cue)
  jQuery(".custo_total_do_material").html converteFloatMoeda(data.custo_total_do_material)
  jQuery(".custo_total_das_atividades").html converteFloatMoeda(data.custo_total_das_atividades)
  jQuery(".custo_total_do_tempos_fixos").html converteFloatMoeda(data.custo_total_do_tempos_fixos)
  jQuery(".custo_total_de_outros_tipos").html converteFloatMoeda(data.custo_total_de_outros_tipos)
  jQuery(".custo_total_do_material").html converteFloatMoeda(data.custo_total_do_material)
  jQuery('.self_pr_un').html converteFloatMoeda(data.self_pr_un)