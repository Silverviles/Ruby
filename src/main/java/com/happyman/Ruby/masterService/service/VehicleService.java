package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Vehicle;

public interface VehicleService {
	public Vehicle getVehicle(Integer vehicleId);
	public List<Vehicle> getAllVehicles();
	public void saveVehicle(Vehicle vehicle);
}
