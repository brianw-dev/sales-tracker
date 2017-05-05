$(document).ready(function() {
  $(".nav-wrapper").on("click", ".login", function(event){
    event.preventDefault()
    var $login = $(this)
    var url = $login.attr('href')

    $.ajax({
      url: url,
      method: "get"
    })
    .done(function(response) {
      $(".form").empty()
      $(".form").append(response)
    })
  })

    $(".nav-wrapper").on("click", ".new-account", function(event){
    event.preventDefault()
    var $newaccount = $(this)
    var url = $newaccount.attr('href')

    $.ajax({
      url: url,
      method: "get"
    })
    .done(function(response) {
      $(".form").empty()
      $(".form").append(response)
    })
  })
});
