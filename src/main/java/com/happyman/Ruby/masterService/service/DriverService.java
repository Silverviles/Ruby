package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Driver;

@Service
public interface DriverService {
	void addDriver(Driver driver);

	Driver getDriverById(Integer driverId);

	void deleteDriver(Driver driver);

	Driver getDriverByEmail(String email);

	Driver getDriverByMobileNo(String mobileNo);

	List<Driver> getAllDrivers();

	List<Driver> getAllDriversByVehicleType(String type);
}
