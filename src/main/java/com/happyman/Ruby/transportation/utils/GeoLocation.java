package com.happyman.Ruby.transportation.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.maps.DistanceMatrixApi;
import com.google.maps.GeoApiContext;
import com.google.maps.model.DistanceMatrixRow;
import com.google.maps.model.LatLng;
import com.happyman.Ruby.transportation.dto.DistanceDTO;

public class GeoLocation {
	private static final Logger LOG = LoggerFactory.getLogger(GeoLocation.class);
	private static final String GOOGLE_API_KEY_STATIC = "AIzaSyBfPafF0R1oIb1vV3sk2plRSQBvOtU8At8";
	private static final Double villaLat = 6.340848202661656;
	private static final Double villaLong = 80.03448843955994;

	public static DistanceDTO getDistance(LatLng destination) {
		GeoApiContext context = new GeoApiContext.Builder().apiKey(GOOGLE_API_KEY_STATIC).build();
		DistanceDTO distance = new DistanceDTO();
		LatLng origin = new LatLng(villaLat, villaLong);

		try {
			DistanceMatrixRow row = DistanceMatrixApi.newRequest(context)
				.origins(origin)
				.destinations(destination)
				.awaitIgnoreError().rows[0];

			for (int j = 0; j < row.elements.length; j++) {
				System.out.println("Distance: " + row.elements[j].distance.humanReadable);
				distance.setDistanceStr(row.elements[j].distance.humanReadable);
				System.out.println("Distance in meters: " + row.elements[j].distance.inMeters);
				distance.setDistance(row.elements[j].distance.inMeters);
				System.out.println("Duration: " + row.elements[j].duration.humanReadable);
				distance.setDurationStr(row.elements[j].duration.humanReadable);
				System.out.println("Duration in seconds: " + row.elements[j].duration.inSeconds);
				distance.setDuration(row.elements[j].duration.inSeconds);
				System.out.println("Status: " + row.elements[j].status);
			}
		} catch (Exception e) {
			LOG.error("Error getting distance", e);
		}

		context.shutdown();
		return distance;
	}
}
