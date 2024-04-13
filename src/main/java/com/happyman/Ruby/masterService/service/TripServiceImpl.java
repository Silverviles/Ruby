package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.repository.TripRepository;

@Service
public class TripServiceImpl implements TripService {
	private final TripRepository tripRepository;

	@Autowired
	public TripServiceImpl(TripRepository tripRepository) {
		this.tripRepository = tripRepository;
	}

	@Override
	public void saveTrip(Trip trip) {
		tripRepository.save(trip);
	}

	@Override
	public Trip getTripById(Integer tripId) {
		return tripRepository.findById(tripId).orElse(null);
	}

	@Override
	public List<Trip> getAllTrips() {
		return tripRepository.findAll();
	}

	@Override
	public List<Trip> getAllTripsByVehicleType(String type) {
		return getAllTrips().stream().filter(
			trip -> trip.getDriver().getVehicle().getVehicleType().equals(type)).toList();
	}

	@Override
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber) {
		return getAllTrips().stream().filter(
			trip -> trip.getDriver().getVehicle().getVehicleNumber().equals(vehicleNumber)).toList();
	}

	@Override
	public List<Trip> getAllTripsByDriverId(Integer driverId) {
		return getAllTrips().stream().filter(trip -> trip.getDriver().getId().equals(driverId)).toList();
	}
}
