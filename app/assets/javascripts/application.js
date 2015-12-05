// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function (){
  $(".increase-special").on("click", increaseSpecial);
  $(".decrease-special").on("click", decreaseSpecial);
});

function increaseSpecial(){
  //Increment corresponsding SPECIAL stat by 1 point
  pointsRemaining = parseInt($(".points-remaining")[0].innerHTML);
  specialValue = $(this).siblings(".special-level")[0].innerHTML;
  if (specialValue < 10 && pointsRemaining > 0){
    $(this).siblings(".special-level")[0].innerHTML = parseInt(specialValue) + 1;
    updateSpecialRemaining(true);
  }
}

function decreaseSpecial(){
  //Increment corresponsding SPECIAL stat by 1 point
  specialValue = $(this).siblings(".special-level")[0].innerHTML;
  if (specialValue > 1){
    $(this).siblings(".special-level")[0].innerHTML = parseInt(specialValue) - 1;
    updateSpecialRemaining(false);
  }
}

function updateSpecialRemaining(pointSpent){
  pointsRemaining = parseInt($(".points-remaining")[0].innerHTML);
  if (pointSpent){
    if (pointsRemaining > 0){
      $(".points-remaining")[0].innerHTML = pointsRemaining - 1;
    }
  }
  else {
    $(".points-remaining")[0].innerHTML = pointsRemaining + 1;
  }
}
