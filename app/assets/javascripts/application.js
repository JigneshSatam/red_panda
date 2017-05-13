// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic_ui/semantic_ui
//= require_tree .

$(document).load(function(){
  set_flash_message(null);
});

$(document).ready(function(){
  close_flash_message();
});

// Close flash message
function close_flash_message(){
  $('.message .close').on('click', function() {
    $(this).closest('.message').transition('fade');
  });
}

// Set flash message
function set_flash_message(msg){
  $('.message .flash_message_content').text(msg);
  if (msg !== null)
    show_flash_message();
}

function show_flash_message(){
  // var audio = new Audio('/you-wouldnt-believe.mp3').play();
  // var audio = new Audio('/wiggle.mp3').play();
  $(".message.hidden").transition('fade').toggleClass("hidden visible");
  hide_flash_message(15000);
}

function hide_flash_message(time){
  var closingTime = time || 3000;
  setTimeout(function(){
    $(".message.visible").transition('fade').toggleClass("hidden visible");
  }, closingTime);
}
