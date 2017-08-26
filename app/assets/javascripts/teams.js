$(document).ready(function() {
  $(".t_buttons a").on("click", function(){
    console.log($(this).class + " clicked Bitcheeees")
    $(".t_buttons").find(".active").removeClass("active");
    $(this).parent().addClass("active");
  });
});
$(document).ready(function() {
  $(".p_buttons a").on("click", function(){
    console.log($(this).class + " clicked Bitcheeees")
    $(".p_buttons").find(".active").removeClass("active");
    $(this).parent().addClass("active");
  });
});
