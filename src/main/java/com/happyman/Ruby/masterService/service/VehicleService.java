package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Vehicle;

public interface VehicleService {
	public Vehicle getVehicle(Integer vehicleId);
	public void saveVehicle(Vehicle vehicle);
}
