package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.repository.DriverRepository;

@Service
public class DriverServiceImpl implements DriverService {
	private final DriverRepository driverRepository;

	@Autowired
	public DriverServiceImpl(DriverRepository driverRepository) {
		this.driverRepository = driverRepository;
	}

	@Override
	public void addDriver(Driver driver) {
		driverRepository.save(driver);
	}

	@Override
	public Driver getDriverById(Integer driverId) {
		return driverRepository.findById(driverId).orElse(null);
	}

	@Override
	public void deleteDriver(Driver driver) {
		driverRepository.delete(driver);
	}

	@Override
	public Driver getDriverByEmail(String email) {
		return getAllDrivers().stream().filter(driver -> driver.getEmail().equals(email)).findFirst().orElse(null);
	}

	@Override
	public Driver getDriverByMobileNo(String mobileNo) {
		return getAllDrivers().stream().filter(driver -> driver.getMobileNo().equals(mobileNo)).findFirst().orElse(
			null);
	}

	@Override
	public List<Driver> getAllDrivers() {
		return driverRepository.findAll();
	}

	@Override
	public List<Driver> getAllDriversByVehicleType(String type) {
		return getAllDrivers().stream().filter(driver -> driver.getEmail().equals(type)).toList();
	}
}
