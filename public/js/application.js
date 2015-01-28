$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $(".home-login").on("click", function(event) {
    event.preventDefault();
    // console.log("it's working!");
    $(".login").toggle();
  });

  $("form.login-submit").on("submit", function(event) {
    event.preventDefault();
    var $target = $(event.target);
    var url = $target.attr("action");
    var type = $target.attr("method");
    var data = $target.serialize();
    $.ajax ({
      url: url,
      type: type,
      data: data
    }).done(function(response) {
      // console.log(response);
      $target[0].reset();
      window.location.href="/";
    });
  });


});
