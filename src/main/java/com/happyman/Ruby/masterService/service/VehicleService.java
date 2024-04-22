package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Vehicle;

public interface VehicleService {
	Vehicle getVehicle(Integer vehicleId);

	List<Vehicle> getAllVehicles();

	void saveVehicle(Vehicle vehicle);
}
