$(function() {

  function unActive() { $(".Side").addClass('off');
    $(".Side").animate( { "marginLeft": "0px" }, 400 ).removeClass("on");
    $(".gray-out").remove();
  }

  $('#mg-bar').on('click',function(){
    if ($(".Side").hasClass('off')) {
      $(".Side").removeClass('off');
      $(".Side").animate( { "marginLeft": "400px" }, 400 ).addClass("on");
      $(".Main").append(`<div class="gray-out"></div>`);
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
