package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Driver;


public interface MasterService {
	public void addDriver(Driver driver);

	public Driver getDriverById(Integer driverId);

	public Driver getDriverByEmail(String email);

	public Driver getDriverByMobileNo(String mobileNo);

	public List<Driver> getAllDrivers();

	public List<Driver> getAllDriversByVehicleType(String type);
}
