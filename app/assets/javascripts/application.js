// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
// require shamcey/jquery
//= require popper
//= require shamcey/bootstrap
//= require shamcey/perfect-scrollbar.jquery
//= require shamcey/jquery.dataTables
//= require shamcey/dataTables.responsive
//= require shamcey/select2.min
//= require shamcey/shamcey

// require orca/jquery.validate
//= require orca/big.min
//= require orca/uteis
//= require orca/tipos_de_composicoes
//= require orca/convertemoeda
//= require popular_transacao


$(function() {
  'use strict';

  $('#datatable1').DataTable({
    responsive: true,
    language: {
      searchPlaceholder: 'Localizar...',
      sSearch: '',
      lengthMenu: '_MENU_ items/paginas',


      sZeroRecords:   "Nenhum registro encontrado",
      sEmptyTable:    "Nenhum dado disponivel nesta tabela",
      sInfo:          "Mostrando registros de _START_ ate _END_ de um total de _TOTAL_ registros",
      sInfoEmpty:     "Mostrando registros de 0 a 0 de um total de 0 registros",

    }
  });

  $('#datatable2').DataTable({
    bLengthChange: false,
    searching: false,
    responsive: true
  });

  // Select2
  $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

});

$(".alert").delay(6000).slideUp(200, function() {
    $(this).alert('close');
});


$(document).ready(function () {

    $('.pagination a').attr('data-remote', 'true')

});


$(document).ready(function () {

    $('#bemVindoModal').modal('show');

});


function fecharBemVindo(){
  //   $.post( "<%= home_flag_path %>" );    
  jQuery.post('home/bem_vindo')
}

//function carregando(){
  //   $.post( "<%= home_flag_path %>" );    
  //alert("post post")
  
//}

function carregandoComposicoes() {
  jQuery(".composicoes").empty();
  jQuery(".composicoes").html("<center><%= image_tag('carregando.gif') %></center><center><h2>Aguarde</h2></center>");
}

function carregandoInsumos() {
  jQuery(".insumos").empty();
  jQuery(".insumos").html("<center><%= image_tag('carregando.gif') %></center><center><h2>Aguarde</h2></center>");
}

function removerMensagens() {
  jQuery("#form-modal-error").empty();
}

//views/banco/emp/insumos/new
$('#banco_emp_insumo_tipo').each(function(){
  var valor = $(this).val();
  if(valor == "1"){
    $("label[for='banco_emp_insumo_pnd']").text('Valor não Desonerado Operativo');
    $("label[for='banco_emp_insumo_pd']").text('Valor Desonerado Operativo');
    $(".esconder").show();
  }else if (valor == '3') {
    $("label[for='banco_emp_insumo_pnd']").text('Valor não Desonerado');
    $("label[for='banco_emp_insumo_pd']").text('Valor Desonerado');
    $(".esconder").show();
    $(".esconder2").hide();
  }else{
    $("label[for='banco_emp_insumo_pnd']").text('Valor');
    $(".esconder").hide();
  }
});

function round2(value) {
  if (value) {
    if (!isNaN(value) && isFinite(value)) {
      return parseFloat((Big(parseFloat(value).toFixed(9)).round(2, 1).toFixed(2)))
    } else {
      return 0
    }
  } else {
    return 0
  }
}

function round(value, n_decimais) {
  if (value) {
    if (n_decimais){
      if (!isNaN(value) && isFinite(value)) {
        return parseFloat((Big(parseFloat(value).toFixed(9)).round(n_decimais, 1).toFixed(n_decimais)))
      } else {
        return 0
      }
    } else {
      if (!isNaN(value) && isFinite(value)) {
        return parseFloat((Big(parseFloat(value).toFixed(9)).round(0, 1).toFixed()))
      } else {
        return 0
      }
    }
  } else {
    return 0
  }
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function roundDown(value) {
  if (value) {
    if (!isNaN(value) && isFinite(value)) {
      return parseFloat((Big(parseFloat(value).toFixed(9)).round(2, 0).toFixed(2)))
    } else {
      return 0
    }
  } else {
    return 0
  }
}

function somar(a, b) {
  if (a && b) {
    a = parseFloat(a)
    b = parseFloat(b)
    return parseFloat(Big(a).plus(b).toFixed(9))
  } else if (a && !b) {
    return parseFloat(a)
  } else if (!a && b) {
    return parseFloat(b)
  } else {
    return 0
  }
}

function subtrair(a, b) {
  if (a && b) {
    a = parseFloat(a)
    b = parseFloat(b)
    return parseFloat(Big(a).minus(b).toFixed(9))
  } else if (a && !b) {
    return parseFloat(a)
  } else if (!a && b) {
    return parseFloat(b)
  } else {
    return 0
  }
}

function multiplicar(a, b) {
  if (a && b) {
    return parseFloat(Big(parseFloat(a)).times(parseFloat(b)).toFixed(9))
  } else {
    return 0
  }
}

function dividir(a, b) {
  if (a && b) {
    a = parseFloat(a)
    b = parseFloat(b)
    if (b != 0) {
      return parseFloat(Big(parseFloat(a)).div(parseFloat(b)).toFixed(9))  
    } else {
      return 0
    }
  } else {
    return 0
  }
}

//jQuery('.modal').on('shown.bs.modal', function() {
//  jQuery('form[data-validate]').enableClientSideValidations();
//});

// sanitizer html
var tagBody = '(?:[^"\'>]|"[^"]*"|\'[^\']*\')*';
var tagOrComment = new RegExp(
  '<(?:'
  // Comment body.
  + '!--(?:(?:-*[^->])*--+|-?)'
  // Special "raw text" elements whose content should be elided.
  + '|script\\b' + tagBody + '>[\\s\\S]*?</script\\s*'
  + '|style\\b' + tagBody + '>[\\s\\S]*?</style\\s*'
  // Regular name
  + '|/?[a-z]'
  + tagBody
  + ')>',
  'gi'
);
function removeTags(html) {
  var oldHtml;
  do {
    oldHtml = html;
    html = html.replace(tagOrComment, '');
  } while (html !== oldHtml);
  return html.replace(/</g, '&lt;');
};


