$(function(){
  attachMatchesListeners();
})

function attachMatchesListeners() {
  $("#ratio").on('click', () => addRatio());
  $("#fixed").on('click', () => addFixed());
}

function addRatio(){
  var input = $('<input type="number" min="0" max="100" name="match[ratio]" id = "match_value" value = "50">')
  var instruction = '&#8594;<font size="2.5">Enter the percentage amount for matching donation (1-100): </font>'

  $('div.fixed').html("");
  $('div.ratio').html(instruction);
  $('div.ratio').append(input);

}

function addFixed(){
  var input = $('<input type="number" min="1" name="match[fixed_match]" value = "10">')
  var instruction = '&#8594;<font size="2.5">Enter the amount in dollar for matching per donation: $ </font>'

  $('div.ratio').html("");
  $('div.fixed').html(instruction);
  $('div.fixed').append(input);
}
