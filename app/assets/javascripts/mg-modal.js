$(function() {

  function unActive() { $(".Side").addClass('off');
    $(".Side").animate( { "marginLeft": "0px" }, 400 ).removeClass("on");
    $(".Main").removeAttr("style");
  }

  $('#mg-bar').on('click',function(){
    if ($(".Side").hasClass('off')) {
      $(".Side").removeClass('off');
      $(".Side").animate( { "marginLeft": "400px" }, 400 ).addClass("on");
      $(".Main").css( { "background": "rgba(0, 0, 0, 0.29)" } );
    } else {
      unActive();
    }
  });

  $(".Main").on('click',function(){
    if ($(".Side").hasClass("on")) {
      unActive();
    }
  })

});
