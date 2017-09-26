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

// TEAMS INDEX VIEW

$(document).ready( function(){
  $("#t_over").click(function(){
    $('.team_table').addClass("hidden");
    $('#over_t').removeClass("hidden");
    $('.t_sts_btn').removeClass("sts_active");
    $('#t_over').addClass("sts_active");
  });
  $("#t_offe").click(function(){
    $('.team_table').addClass("hidden");
    $('#offe_t').removeClass("hidden");
    $('.t_sts_btn').removeClass("sts_active");
    $('#t_offe').addClass("sts_active");
  });
  $("#t_deff").click(function(){
    $('.team_table').addClass("hidden");
    $('#deff_t').removeClass("hidden");
    $('.t_sts_btn').removeClass("sts_active");
    $('#t_deff').addClass("sts_active");
  });
  $("#t_book").click(function(){
    $('.team_table').addClass("hidden");
    $('#book_t').removeClass("hidden");
    $('.t_sts_btn').removeClass("sts_active");
    $('#t_book').addClass("sts_active");
  });
  $("#p_over").click(function(){
    $('.pl_table').addClass("hidden");
    $('#over_p').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#p_over').addClass("sts_active");
  });
  $("#p_offe").click(function(){
    $('.pl_table').addClass("hidden");
    $('#offe_p').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#p_offe').addClass("sts_active");
  });
  $("#p_deff").click(function(){
    $('.pl_table').addClass("hidden");
    $('#deff_p').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#p_deff').addClass("sts_active");
  });
  $("#p_book").click(function(){
    $('.pl_table').addClass("hidden");
    $('#book_p').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#p_book').addClass("sts_active");
  });
});

// TEAMS SHOW VIEW

$(document).ready( function(){
  $("#sp_over").click(function(){
    $('.players_table').addClass("hidden");
    $('#over_sp').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#sp_over').addClass("sts_active");
  });
  $("#sp_offe").click(function(){
    $('.players_table').addClass("hidden");
    $('#offe_sp').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#sp_offe').addClass("sts_active");
  });
  $("#sp_deff").click(function(){
    $('.players_table').addClass("hidden");
    $('#deff_sp').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#sp_deff').addClass("sts_active");
  });
  $("#sp_book").click(function(){
    $('.players_table').addClass("hidden");
    $('#book_sp').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#sp_book').addClass("sts_active");
  });
});


$(document).ready( function() {
  if ($(window).width() < 576) {
    $('.bigger_h1').append( $('.shirt'));
    $('.img_space').removeClass("col-sm-4");
  }
  else {
    $('.img_space').append( $('.shirt'));
    $('.img_space').addClass("col-sm-4");
  }
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

// PLAYERS INDEX VIEW

$(document).ready( function(){
  $("#pl_over").click(function(){
    $('.all_players_table').addClass("hidden");
    $('#over_pl').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#pl_over').addClass("sts_active");
  });
  $("#pl_offe").click(function(){
    $('.all_players_table').addClass("hidden");
    $('#offe_pl').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#pl_offe').addClass("sts_active");
  });
  $("#pl_deff").click(function(){
    $('.all_players_table').addClass("hidden");
    $('#deff_pl').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#pl_deff').addClass("sts_active");
  });
  $("#pl_book").click(function(){
    $('.all_players_table').addClass("hidden");
    $('#book_pl').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#pl_book').addClass("sts_active");
  });
});

$(document).ready( function(){
  if ($(window).width() < 515) {
    $('.shortn').removeClass("hidden");
    $('.longn').addClass("hidden")
  }
  else {
    $('.shortn').addClass("hidden")
    $('.longn').removeClass("hidden");
  };
});

// PLAYERS SHOW VIEW

$(document).ready( function(){
  $("#m_over").click(function(){
    $('.team_matches').addClass("hidden");
    $('#over_m').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#m_over').addClass("sts_active");
  });
  $("#m_offe").click(function(){
    $('.team_matches').addClass("hidden");
    $('#offe_m').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#m_offe').addClass("sts_active");
  });
  $("#m_deff").click(function(){
    $('.team_matches').addClass("hidden");
    $('#deff_m').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#m_deff').addClass("sts_active");
  });
  $("#m_book").click(function(){
    $('.team_matches').addClass("hidden");
    $('#book_m').removeClass("hidden");
    $('.p_sts_btn').removeClass("sts_active");
    $('#m_book').addClass("sts_active");
  });
});
