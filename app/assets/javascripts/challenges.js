$(function(){
  attachChallengesListeners();
})

function attachChallengesListeners() {
  $("#donation_count").on('click', () => addCount());
  $("#total_donation").on('click', () => addTotal());
}

function addCount(){
  var input = $('<input type="number" min="0" name="challenge[donation_count]" id = "donation_count" value = "100">')

  $('div.total').html("");
  $('div.count').append(input);

}

function addTotal(){
  var input = $('<input type="number" min="1" name="challenge[total_donation]" value = "1000">')

  $('div.count').html("");
  $('div.total').append(input);
}
