$(function() {
  $("#mg-bar").click(function() {
    $(".Side").animate( { width: 'toggle' }, 'fast' )
    // $(".Side").slideDown("fast")
  });
  // $("#mg-bar").hover(
  //   function() {
  //     $(".Side").slideDown("fast")
  //   },
  //   function() {
  //     $(".Side").slideUp("fast")
  //   }
  // )
});
