$(document).ready(function() {
  $(".address_form").on("submit", function(e) {
    e.preventDefault();
    var address,
        geocoder,
        latitude,
        longitude;

    address = $("#address").val();
    geocoder = new google.maps.Geocoder();

    geocoder.geocode( { 'address': address}, function(results, status) {
      latitude = results[0].geometry.location.A
      longitude = results[0].geometry.location.F

      $.ajax({
        url: "/instagram_results",
        method: "POST",
        dataType: "json",
        data: { latitude: latitude, longitude: longitude }
      }).done(function(response) {
        console.log(response);
        debugger;
      });
    });

  });
});
