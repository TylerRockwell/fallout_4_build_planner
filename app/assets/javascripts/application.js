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

// Attach javascript actions to relevant DOM elements
$(document).ready(function (){
  $(".increase-special").on("click", increaseSpecial);
  $(".decrease-special").on("click", decreaseSpecial);
  $(".increase-perk").on("click", increasePerk);
  $(".decrease-perk").on("click", decreasePerk);
});

// SPECIAL Stat Handling
function increaseSpecial(){
  //Increment corresponsding SPECIAL stat by 1 point
  pointsRemaining = parseInt($(".points-remaining")[0].innerHTML);
  specialValue = $(this).prev(".special-level")[0].innerHTML;
  if (specialValue < 10 && pointsRemaining > 0){
    $(this).prev(".special-level")[0].innerHTML = parseInt(specialValue) + 1;
    updateSpecialRemaining(true);
  }
}

function decreaseSpecial(){
  //Increment corresponsding SPECIAL stat by 1 point
  specialValue = $(this).next(".special-level")[0].innerHTML;
  if (specialValue > 1){
    $(this).next(".special-level")[0].innerHTML = parseInt(specialValue) - 1;
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

// Perk Handling

function increasePerk(){
  console.log($(this).prev(".perk-level")[0])
  perkValue = $(this).prev(".perk-level")[0].innerHTML.split("/");
  current = parseInt(perkValue[0]);
  max =  parseInt(perkValue[1]);
  if(current < max){
    $(this).prev(".perk-level")[0].innerHTML = (current+1) + "/" + max
    updatePerksUsed(true);
  }
}

function decreasePerk(){
  perkValue = $(this).next(".perk-level")[0].innerHTML.split("/");
  current = parseInt(perkValue[0]);
  max =  parseInt(perkValue[1]);
  if(current > 0){
    $(this).next(".perk-level")[0].innerHTML = (current-1) + "/" + max;
    updatePerksUsed(false);
  }
}

function updatePerksUsed(perkIncreased){
  perksUsed = parseInt($(".num-perks")[0].innerHTML);
  if (perkIncreased){
    $(".num-perks")[0].innerHTML = perksUsed + 1;
  }
  else{
    $(".num-perks")[0].innerHTML = perksUsed - 1;
  }
}
