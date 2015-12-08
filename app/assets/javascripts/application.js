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
  //Attach javascript to relevant DOM elements
  $(".increase-special").on("click", increaseSpecial);
  $(".decrease-special").on("click", decreaseSpecial);
  $(".increase-perk").on("click", increasePerk);
  $(".decrease-perk").on("click", decreasePerk);
});

// SPECIAL Stat Handling
function increaseSpecial(){
  //Increase corresponsding SPECIAL stat by 1 point
  pointsRemaining = parseInt($(".points-remaining")[0].innerHTML);
  specialValue = $(this).prev(".special-level")[0].innerHTML;
  //If SPECIAL stat level is currently less than 10, increase by one
  if (specialValue < 10){
    $(this).prev(".special-level")[0].innerHTML = parseInt(specialValue) + 1;
    //Use point from SPECIAL pool if available, otherwise use a perk point
    if (pointsRemaining > 0){
      updateSpecialRemaining(true);
    }
    else {
      updatePerksUsed(true);
    }
  }
}

function decreaseSpecial(){
  //Decrease corresponsding SPECIAL stat by 1 point
  specialValue = $(this).next(".special-level")[0].innerHTML;
  if (specialValue > 1){
    $(this).next(".special-level")[0].innerHTML = parseInt(specialValue) - 1;
    if (sumAllSpecials() < 28){
      // Decrements SPECIAL points allocated if perks
      // have not been used to increase SPECIAL
      updateSpecialRemaining(false);
    }
    else{
      // Decreases perks used if perks have been used to increase SPECIAL
      updatePerksUsed(false);
    }
  }
}

function updateSpecialRemaining(pointSpent){
  //Updates number of SPECIAL stats left to be allocated
  pointsRemaining = parseInt($(".points-remaining")[0].innerHTML);
  //If SPECIAL point was spent, decrease total available by 1
  if (pointSpent){
    if (pointsRemaining > 0){
      $(".points-remaining")[0].innerHTML = pointsRemaining - 1;
    }
  }
  //If SPECIAL point was removed, increase total available by 1
  else {
    $(".points-remaining")[0].innerHTML = pointsRemaining + 1;
  }
}


function sumAllSpecials(){
  //Returns the sum of all SPECIAL stat levels
  specialStats = $(".special-level");
  totalSpecial = 0;

  for (i=0; i<specialStats.length; i++){
    totalSpecial += parseInt(specialStats[i].innerHTML);
  }
  return totalSpecial;
}
// Perk Handling

function increasePerk(){
  //Increment corresponding Perk by 1 rank
  perkValue = $(this).prev(".perk-level")[0].innerHTML.split("/");
  current = parseInt(perkValue[0]);
  max =  parseInt(perkValue[1]);

  //Only increments perk if its current rank is less than the max rank
  if(current < max){
    $(this).prev(".perk-level")[0].innerHTML = (current+1) + "/" + max
    updatePerksUsed(true);
  }
}

function decreasePerk(){
  //Decrement corresponding Perk by 1 rank
  perkValue = $(this).next(".perk-level")[0].innerHTML.split("/");
  current = parseInt(perkValue[0]);
  max =  parseInt(perkValue[1]);

  //Only decrements perk if points have already been invested
  if(current > 0){
    $(this).next(".perk-level")[0].innerHTML = (current-1) + "/" + max;
    updatePerksUsed(false);
  }
}

function updatePerksUsed(perkIncreased){
  //Updates the total number of perks used
  perksUsed = parseInt($(".num-perks")[0].innerHTML);
  if (perkIncreased){
    $(".num-perks")[0].innerHTML = perksUsed + 1;
  }
  else{
    $(".num-perks")[0].innerHTML = perksUsed - 1;
  }
}
