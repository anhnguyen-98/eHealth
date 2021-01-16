function getLocationByDefault() {
    $.getJSON("https://ipinfo.io?token=b0244f6f14547e", onLocationGot);
  }
 
  function onLocationGot(info) {
    let position = info.loc.split(",");
	document.getElementById("lat").value = position[0];
	document.getElementById("lon").value = position[1];
  }
  
function showPosition(position) {
  var latlon = position.coords.latitude + "," + position.coords.longitude;

  var img_url = "https://maps.googleapis.com/maps/api/staticmap?center= "+latlon+"&zoom=14&size=400x300&sensor=false&key=AIzaSyBxOxybhclGgk1NqhTAEr9yUxFjfuYwxNQ";

  document.getElementById("mapholder").innerHTML = "<img src='"+img_url+"'>";
}

  
  function getLocation() {
    let geolocation = navigator.geolocation;
    if (geolocation) {
        geolocation.getCurrentPosition(onGeoSuccess, onGeoError);
    } else {
        console.log("Geolocation is not supported by this browser.");
        getLocationByDefault();
    }
}

function onGeoSuccess(position) {
    document.getElementById("lat").value = position.coords.latitude;
    document.getElementById("lon").value = position.coords.longitude;
    
    var latlon = position.coords.latitude + "," + position.coords.longitude;

  var img_url = "https://maps.googleapis.com/maps/api/staticmap?center= "+latlon+"&zoom=14&size=400x300&sensor=false&key=AIzaSyBxOxybhclGgk1NqhTAEr9yUxFjfuYwxNQ";

  document.getElementById("mapholder").innerHTML = "<img src='"+img_url+"'>";
}

function onGeoError(error) {
    let detailError;
	getLocationByDefault();
    if(error.code === error.PERMISSION_DENIED) {
        detailError = "User denied the request for Geolocation.";
    } 
    else if(error.code === error.POSITION_UNAVAILABLE) {
        detailError = "Location information is unavailable.";
    } 
    else if(error.code === error.TIMEOUT) {
        detailError = "The request to get user location timed out."
    } 
    else if(error.code === error.UNKNOWN_ERROR) {
        detailError = "An unknown error occurred."
    }

    document.getElementById("#error").innerHTML = `Error: ${detailError}`;
}
getLocation()