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
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(document).ready( function(){
  $("#t_over").click(function(){
    addAndRemoveClass('.team_table', '#over_t', '.t_sts_btn', '#t_over')
  });
  $("#t_offe").click(function(){
    addAndRemoveClass('.team_table', '#offe_t', '.t_sts_btn', '#t_offe')
  });
  $("#t_deff").click(function(){
    addAndRemoveClass('.team_table', '#deff_t', '.t_sts_btn', '#t_deff')
  });
  $("#t_book").click(function(){
    addAndRemoveClass('.team_table', '#book_t', '.t_sts_btn', '#t_book')
  });
  $("#p_over").click(function(){
    addAndRemoveClass('.pl_table', '#over_p', '.p_sts_btn', '#p_over')
  });
  $("#p_offe").click(function(){
    addAndRemoveClass('.pl_table', '#offe_p', '.p_sts_btn', '#p_offe')
  });
  $("#p_deff").click(function(){
    addAndRemoveClass('.pl_table', '#deff_p', '.p_sts_btn', '#p_deff')
  });
  $("#p_book").click(function(){
    addAndRemoveClass('.pl_table', '#book_p', '.p_sts_btn', '#p_book')
  });
});

$(document).ready( function(){
  $("#sp_over").click(function(){
    addAndRemoveClass('.players_table', '#over_sp', '.p_sts_btn', '#sp_over')
  });
  $("#sp_offe").click(function(){
    addAndRemoveClass('.players_table', '#offe_sp', '.p_sts_btn', '#sp_offe')
  });
  $("#sp_deff").click(function(){
    addAndRemoveClass('.players_table', '#deff_sp', '.p_sts_btn', '#sp_deff')
  });
  $("#sp_book").click(function(){
    addAndRemoveClass('.players_table', '#book_sp', '.p_sts_btn', '#sp_book')
  });
});

$(document).ready( function(){
  $("#pl_over").click(function(){
    addAndRemoveClass('.all_players_table', '#over_pl', '.p_sts_btn', '#pl_over')
  });
  $("#pl_offe").click(function(){
    addAndRemoveClass('.all_players_table', '#offe_pl', '.p_sts_btn', '#pl_offe')
  });
  $("#pl_deff").click(function(){
    addAndRemoveClass('.all_players_table', '#deff_pl', '.p_sts_btn', '#pl_deff')
  });
  $("#pl_book").click(function(){
    addAndRemoveClass('.all_players_table', '#book_pl', '.p_sts_btn', '#pl_book')
  });
});

$(document).ready( function(){
  $("#m_over").click(function(){
    addAndRemoveClass('.team_matches', '#over_m', '.p_sts_btn', '#m_over')
  });
  $("#m_offe").click(function(){
    addAndRemoveClass('.team_matches', '#offe_m', '.p_sts_btn', '#m_offe')
  });
  $("#m_deff").click(function(){
    addAndRemoveClass('.team_matches', '#deff_m', '.p_sts_btn', '#m_deff')
  });
  $("#m_book").click(function(){
    addAndRemoveClass('.team_matches', '#book_m', '.p_sts_btn', '#m_book')
  });
});

$(window).on("load resize", function(e){
  if (screen.width < 768) {
    addAndRemoveCollapse('.longn', '.shortn')
  }
  else {
    addAndRemoveCollapse('.shortn', '.longn')
  };
});

$(window).on("load resize", function(e) {
  if (screen.width < 576) {
    $('.bigger_h1').append( $('.shirt'));
    $('.img_space').removeClass("col-sm-4");
  }
  else {
    $('.img_space').append( $('.shirt'));
    $('.img_space').addClass("col-sm-4");
  }
});

function addAndRemoveClass(addCollapse, removeCollapse, removeActive, addActive) {
  addAndRemoveCollapse(addCollapse, removeCollapse)
  $(removeActive).removeClass("sts_active");
  $(addActive).addClass("sts_active");
}

function addAndRemoveCollapse(addCollapse, removeCollapse) {
  $(addCollapse).addClass("collapse");
  $(removeCollapse).removeClass("collapse");
}
