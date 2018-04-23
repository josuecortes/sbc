jQuery(function($){
  jQuery('.mask-cep').mask("99999-999");
  jQuery('.mask-cpf').mask("999.999.999-99");
  jQuery('.mask-cnpj').mask("99.999.999/9999-99");
  jQuery('.mask-data-hora').mask("99/99/9999 99:99");
  jQuery('.mask-data').mask("99/99/9999");
  jQuery('.mask-data-dia-mes').mask("99/99");
});

jQuery(".mask-telefone")
        .mask("(99) 9999-9999?9")
        .focusout(function (event) {  
            var target, phone, element;  
            target = (event.currentTarget) ? event.currentTarget : event.srcElement;  
            phone = target.value.replace(/\D/g, '');
            element = $(target);  
            element.unmask();  
            if(phone.length > 10) {  
                element.mask("(99) 99999-999?9");  
            } else {  
                element.mask("(99) 9999-9999?9");  
            }  
        });

var mask = {
  money: function() {
    var el = this
    ,exec = function(v) {
    v = v.replace(/\D/g,"");
    v = new String(Number(v));
    var len = v.length;
    if (1== len)
    v = v.replace(/(\d)/,"0,0$1");
    else if (2 == len)
    v = v.replace(/(\d)/,"0,$1");
    else if (len > 2) {
    v = v.replace(/(\d{2})$/,',$1');
    }
      return v;
    };

    setTimeout(function(){
      el.value = exec(el.value);
    },1);
  }
}

jQuery(function(){
 jQuery('input.mask-preco').bind('keypress',mask.money)
});