$(document).ready(function() {
  $(".address_form").on("submit", function(e) {
    e.preventDefault();

    var address = $("#address").val();
    console.log(address);

    $.ajax({
      url: "/instagram_results",
      method: "POST",
      dataType: "json"
    })
  });
});
