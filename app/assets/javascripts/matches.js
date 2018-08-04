$(function(){
  attachMatchesListeners();
})

function attachMatchesListeners() {
  $("#ratio").on('click', () => addRatio());
  $("#fixed").on('click', () => addFixed());
}

function addRatio(){
  var input = $('<input name="match[ratio]" id = "match_value" value = "0.5">')
  var instruction = "Enter the ratio for matching donation: e.g., "

  $('div.fixed').html("");
  $('div.ratio').html(instruction);
  $('div.ratio').append(input);

}

function addFixed(){
  var input = $('<input name="match[fixed_match]" value = "10">')
  var instruction = "Enter the amount in dollar for matching per donation: e.g., $ "

  $('div.ratio').html("");
  $('div.fixed').html(instruction);
  $('div.fixed').append(input);
}
