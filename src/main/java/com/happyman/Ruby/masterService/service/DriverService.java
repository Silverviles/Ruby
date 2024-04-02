package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Driver;

@Service
public interface DriverService {
	public void addDriver(Driver driver);

	public Driver getDriverById(Integer driverId);

	public Driver getDriverByEmail(String email);

	public Driver getDriverByMobileNo(String mobileNo);

	public List<Driver> getAllDrivers();

	public List<Driver> getAllDriversByVehicleType(String type);
}
