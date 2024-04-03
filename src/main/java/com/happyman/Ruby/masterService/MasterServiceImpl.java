package com.happyman.Ruby.masterService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.service.DriverService;

@Service
public class MasterServiceImpl implements MasterService{
	private final DriverService driverService;

	@Autowired
	public MasterServiceImpl(DriverService driverService) {
		this.driverService = driverService;
		// TODO: add all the other services here. Declare them as variables above first.
	}

	@Override
	public void addDriver(Driver driver) {
		driverService.addDriver(driver);
	}

	@Override
	public Driver getDriverById(Integer driverId) {
		return driverService.getDriverById(driverId);
	}

	@Override
	public Driver getDriverByEmail(String email) {
		return driverService.getDriverByEmail(email);
	}

	@Override
	public Driver getDriverByMobileNo(String mobileNo) {
		return driverService.getDriverByMobileNo(mobileNo);
	}

	@Override
	public List<Driver> getAllDrivers() {
		return driverService.getAllDrivers();
	}

	@Override
	public List<Driver> getAllDriversByVehicleType(String type) {
		return driverService.getAllDriversByVehicleType(type);
	}
}
