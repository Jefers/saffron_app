$(document).ready(function() {
    $('.slideshow').cycle({
    fx: 'fade' ,
    speed:  4000
  });
});

$(document).ready(function(){
  $('#tab-container').easytabs();
});

$(document).ready(function(){
  $('#myform').corner("bite keep 15px cc:#009");
});

function disableAutoCompleteLogin()
{
  document.getElementById('user_email').setAttribute( "autocomplete", "off");
}
