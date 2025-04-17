function getBathroomValue() {
    var uiBathrooms = document.getElementsByName("uiBathrooms");
    for (var i = 0; i < uiBathrooms.length; i++) {
        if (uiBathrooms[i].checked) {
            return parseInt(uiBathrooms[i].value); // Get the value of the checked radio button
        }
    }
    return -1; // Invalid Value
}

function getBedroomValue() {
    var uiBHK = document.getElementsByName("uiBHK");
    for (var i = 0; i < uiBHK.length; i++) {
        if (uiBHK[i].checked) {
            return parseInt(uiBHK[i].value); // Get the value of the checked radio button
        }
    }
    return -1; // Invalid Value
}

function onClickedEstimatePrice() {
    console.log("Estimate price button clicked");
    var sqft = document.getElementById("uiSqft");
    var bedroom = getBedroomValue(); // Using getBedroomValue() to fetch the selected bedroom value
    var bathroom = getBathroomValue();
    var location = document.getElementById("uiLocations");
    var estPrice = document.getElementById("uiEstimatedPrice");

    var url = "http://127.0.0.1:5000/predict_prices"; // URL of the Flask API

    $.post(url, {
        sqft: parseFloat(sqft.value), // sending sqft as a float
        bedroom: bedroom, // sending bedroom count
        bath: bathroom,  // sending bathroom count
        location: location.value // sending location
    }, function(data, status) {
        if (data['estimated price']) {
            console.log(data['estimated price']);
            estPrice.innerHTML = "<h2>" + data['estimated price'].toString() + " Lakh</h2>";
        } else {
            estPrice.innerHTML = "<h2>Unable to estimate price. Please check your inputs.</h2>";
        }
        console.log(status);
    }).fail(function() {
        estPrice.innerHTML = "<h2>Failed to get response from the server. Please try again later.</h2>";
    });
}

function onPageLoad() {
    console.log("document loaded");
    var url = "http://127.0.0.1:5000/get_location_names"; // URL of the Flask API
    $.get(url, function(data, status) {
        console.log("got response for get_location_names request");
        if (data) {
            var locations = data.locations;
            var uiLocations = document.getElementById("uiLocations");
            $('#uiLocations').empty();
            for (var i in locations) {
                var opt = new Option(locations[i]);
                $('#uiLocations').append(opt);
            }
        }
    }).fail(function() {
        console.log("Failed to load location names.");
    });
}

window.onload = onPageLoad;
