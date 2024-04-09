package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Vehicle;
import com.happyman.Ruby.masterService.repository.DriverRepository;
import com.happyman.Ruby.masterService.repository.VehicleRepository;

@Service
public class VehicleServiceImpl implements VehicleService{
	private final VehicleRepository vehicleRepository;

	@Autowired
	public VehicleServiceImpl(VehicleRepository vehicleRepository){
		this.vehicleRepository = vehicleRepository;
	}

	@Override
	public Vehicle getVehicle(Integer vehicleId) {
		return vehicleRepository.findById(vehicleId).orElse(null);
	}

	@Override
	public List<Vehicle> getAllVehicles() {
		return vehicleRepository.findAll();
	}

	@Override
	public void saveVehicle(Vehicle vehicle) {
		vehicleRepository.save(vehicle);
	}
}
