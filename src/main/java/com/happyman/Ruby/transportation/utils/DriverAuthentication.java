package com.happyman.Ruby.transportation.utils;

import jakarta.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Vehicle;

public class DriverAuthentication {
	private static final Logger LOG = LoggerFactory.getLogger(DriverAuthentication.class);
	public static Boolean verifySignup(HttpServletRequest request, MasterService masterService){
		Driver driver = new Driver();
		Vehicle vehicle = new Vehicle();

		vehicle.setVehicleType(request.getParameter("vehicleType"));
		vehicle.setMaxCount(Integer.parseInt(request.getParameter("seatCount")));
		vehicle.setVehicleNumber(request.getParameter("vehicleNumber"));

		driver.setFirstName(request.getParameter("firstName"));
		driver.setLastName(request.getParameter("lastName"));
		driver.setVehicle(vehicle);
		driver.setEmail(request.getParameter("email"));
		driver.setMobileNo(request.getParameter("mobileNumber"));
		driver.setPassword(encodePassword(request.getParameter("password")));

		try{
			masterService.addDriver(driver);
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
