package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Trip;

public interface TripService {
	public void saveTrip(Trip trip);

	public Trip getTripById(Integer tripId);

	public void deleteTrip(Trip trip);

	public List<Trip> getAllTrips();

	public List<Trip> getAllTripsByVehicleType(String type);

	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber);

	public List<Trip> getAllTripsByDriverId(Integer driverId);
}
