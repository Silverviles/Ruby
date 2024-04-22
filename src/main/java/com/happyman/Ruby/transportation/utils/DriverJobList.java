package com.happyman.Ruby.transportation.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.transportation.dto.TripDTO;

public class DriverJobList {
	public static Map<String, List<TripDTO>> getAllTrips(MasterService masterService, Integer driverId) {
		List<Trip> allTrips = masterService.getAllTrips();
		Map<String, List<TripDTO>> differentiatedTrips = new HashMap<>();

		List<TripDTO> availableTrips = new ArrayList<>();
		List<TripDTO> inProgressTrips = new ArrayList<>();
		List<TripDTO> completedTrips = new ArrayList<>();

		for (Trip trip : allTrips) {
			TripDTO tripDTO = new TripDTO();
			tripDTO.setId(trip.getId());
			tripDTO.setDriver(trip.getDriver());
			tripDTO.setTripDestination(trip.getTripDestination());
			tripDTO.setTotalCost(trip.getTotalCost());

			switch (trip.getTripStatus()) {
				case 0:
					tripDTO.setTripStatus((byte) 0);
					availableTrips.add(tripDTO);
					break;
				case 1:
					if (trip.getDriver().getId().equals(driverId)) {
						tripDTO.setTripStatus((byte) 1);
						inProgressTrips.add(tripDTO);
					}
					break;
				case 2:
					if (trip.getDriver().getId().equals(driverId)) {
						tripDTO.setTripStatus((byte) 2);
						if (trip.getFinishedDate() != null) {
							tripDTO.setFinishedDate(trip.getFinishedDate().toString());
						}
						completedTrips.add(tripDTO);
					}
					break;
			}
		}

		differentiatedTrips.put("available", availableTrips);
		differentiatedTrips.put("inProgress", inProgressTrips);
		differentiatedTrips.put("completed", completedTrips);

		return differentiatedTrips;
	}
}
