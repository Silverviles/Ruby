package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Trip;

public interface TripService {
	void saveTrip(Trip trip);

	Trip getTripById(Integer tripId);

	void deleteTrip(Trip trip);

	List<Trip> getAllTrips();

	List<Trip> getAllTripsByVehicleType(String type);

	List<Trip> getAllTripsByVehicleNumber(String vehicleNumber);

	List<Trip> getAllTripsByDriverId(Integer driverId);
}
