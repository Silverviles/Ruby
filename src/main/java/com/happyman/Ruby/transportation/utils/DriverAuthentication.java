package com.happyman.Ruby.transportation.utils;

import jakarta.servlet.http.HttpServletRequest;

import java.util.Objects;

import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;

import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Vehicle;
import com.happyman.Ruby.transportation.dto.DriverDTO;

public class DriverAuthentication {
	private static final Logger LOG = LoggerFactory.getLogger(DriverAuthentication.class);
	public static Boolean verifySignup(DriverDTO driverDTO, MasterService masterService){
		Driver driver = new Driver();
		Vehicle vehicle = new Vehicle();

		vehicle.setVehicleType(driverDTO.getVehicleType());
		vehicle.setMaxCount(driverDTO.getSeatCount());
		vehicle.setVehicleNumber(driverDTO.getVehicleNumber());

		driver.setFirstName(driverDTO.getFirstName());
		driver.setLastName(driverDTO.getLastName());
		driver.setEmail(driverDTO.getEmail());
		driver.setMobileNo(driverDTO.getMobileNumber());
		driver.setPassword(encodePassword(driverDTO.getPassword()));

		try{
			masterService.addDriverAndVehicle(driver, vehicle);
		} catch (Exception e){
			LOG.error("Error saving driver: " + driver.getFirstName() + " " + driver.getLastName());
			return false;
		}

		return true;
	}

	public static String encodePassword(String password) {
		String salt = BCrypt.gensalt();
		return BCrypt.hashpw(password, salt);
	}

	public static boolean checkPassword(String candidatePassword, String hashedPassword) {
		return BCrypt.checkpw(candidatePassword, hashedPassword);
	}
}