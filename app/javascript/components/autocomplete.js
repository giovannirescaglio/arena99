function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var articleAddress = document.getElementById('article_address');
    if (articleAddress) {
      var autocomplete = new google.maps.places.Autocomplete(articleAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(articleAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
  document.addEventListener("DOMContentLoaded", function() {
    var localisation = document.getElementById('localisation');
    if (localisation) {
      var autocomplete = new google.maps.places.Autocomplete(localisation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(localisation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}



export { autocomplete };


