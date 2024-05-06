function initAutocomplete() {
	const map = new google.maps.Map(document.getElementById("map"), {
		center : {lat : 6.34, lng : 80.038}, zoom : 13, mapTypeId : "roadmap",
	});
	const input = document.getElementById("pac-input");
	const searchBox = new google.maps.places.SearchBox(input);

	//map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
	map.addListener("bounds_changed", () => {
		searchBox.setBounds(map.getBounds());
	});

	let markers = [];

	searchBox.addListener("places_changed", () => {
		const places = searchBox.getPlaces();

		if (places.length === 0) {
			return;
		}

		markers.forEach((marker) => {
			marker.setMap(null);
		});
		markers = [];

		const bounds = new google.maps.LatLngBounds();

		places.forEach((place) => {
			if (!place.geometry || !place.geometry.location) {
				console.log("Returned place contains no geometry");
				return;
			}

			const icon = {
				url : place.icon,
				size : new google.maps.Size(71, 71),
				origin : new google.maps.Point(0, 0),
				anchor : new google.maps.Point(17, 34),
				scaledSize : new google.maps.Size(25, 25),
			};

			markers.push(new google.maps.Marker({
				map, icon, title : place.name, position : place.geometry.location,
			}),);
			if (place.geometry.viewport) {
				bounds.union(place.geometry.viewport);
			} else {
				bounds.extend(place.geometry.location);
			}
		});
		map.fitBounds(bounds);
	});

	const marker = new google.maps.Marker({
		position: {lat: 6.34, lng: 80.038},
		map: map,
		title: 'Happy Man Villa'
	});

	map.addListener('click', function(event) {
		const latitude = event.latLng.lat();
		const longitude = event.latLng.lng();

		console.log("LAT: " + latitude);
		console.log("LONG: " + longitude);

		if (markers.length > 0) {
			markers[0].setMap(null);
			markers.pop();
		}

		const marker = new google.maps.Marker({
			position : {lat : latitude, lng : longitude}, map : map
		});

		markers.push(marker);

		$.ajax({
			url : '/Ruby/geoLocation/distance',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify({lat : latitude, lng : longitude}),
			success : function(response) {
				var distance = response.distance;
				var distanceStr = response.distanceStr;
				var duration = response.duration;
				var durationStr = response.durationStr;

				$("#distance").val(distanceStr);
				$("#duration").val(durationStr);

				calculatePrice(duration / 60, distance / 1000);

				console.log(distance, distanceStr, duration, durationStr);
				console.log('Distance and duration:', response);
			},
			error : function(xhr, status, error) {
				console.error('Error:', error);
			}
		});
	});

}

function calculatePrice(duration, distance) {
	var vehicleType = document.getElementById("vehicleDropdown").value;
	const pricePerKilometer = {
		car: 150,
		van: 300,
		bus: 500
	};

	duration = parseFloat(duration);
	distance = parseFloat(distance);
	document.getElementById("pricePerKilometer").value = ((duration * 10) + (distance * pricePerKilometer[vehicleType])).toFixed(2);
}

window.initAutocomplete = initAutocomplete;
