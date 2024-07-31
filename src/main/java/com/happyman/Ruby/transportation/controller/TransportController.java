package com.happyman.Ruby.transportation.controller;

import jakarta.servlet.http.HttpServletResponse;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.transportation.dto.DriverDTO;
import com.happyman.Ruby.transportation.utils.DriverAuthentication;
import com.happyman.Ruby.transportation.utils.DriverJobList;

@Controller
@RequestMapping("/transport")
public class TransportController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(TransportController.class);

	@PostMapping("/login")
	public String getLogin(
		@ModelAttribute DriverDTO driverDTO,
		HttpServletResponse response,
		Model model
	) {
		try {
			if (DriverAuthentication.verifyLogin(driverDTO, masterService)) {
				return getPortalString(driverDTO, model);
			} else {
				response.setHeader("Error", "Invalid username or password");
				return "transportation/driver_login";
			}
		} catch (Exception e) {
			response.setHeader("Error", "Unknown error occurred. Please contact system administrator");
			return "transportation/driver_login";
		}
	}

	@PostMapping("/signup")
	public String driverSignUp(
		@ModelAttribute DriverDTO driverDTO,
		HttpServletResponse response,
		Model model
	) {
		if (DriverAuthentication.verifySignup(driverDTO, masterService)) {
			return getPortalString(driverDTO, model);
		} else {
			response.setHeader("Error", "Registration failed. Please contact system administrator");
			return "transportation/driver_login";
		}
	}

	private String getPortalString(@ModelAttribute DriverDTO driverDTO, Model model) {
		return "transportation/driver_portal";
	}

	@PostMapping("/accept")
	public String deleteTrip(Integer jobId, Integer driverId, Model model) {
		Trip trip = masterService.getTripById(jobId);
		trip.setTripStatus((byte) 1);
		trip.setDriver(masterService.getDriverById(driverId));
		masterService.saveTrip(trip);
		model.addAttribute("driver", masterService.getDriverById(driverId));
		model.addAttribute("allJobs", DriverJobList.getAllTrips(masterService, driverId));
		return "transportation/driver_portal";
	}

	@PostMapping("/complete")
	public String completeTrip(Integer jobId, Integer driverId, Model model) {
		Trip trip = masterService.getTripById(jobId);
		trip.setTripStatus((byte) 2);
		trip.setDriver(masterService.getDriverById(driverId));
		trip.setFinishedDate(new Date());
		masterService.saveTrip(trip);
		model.addAttribute("driver", masterService.getDriverById(driverId));
		model.addAttribute("allJobs", DriverJobList.getAllTrips(masterService, driverId));
		return "transportation/driver_portal";
	}

	@PostMapping("/cancel")
	public String cancelTrip(Integer jobId, Integer driverId, Model model) {
		Trip trip = masterService.getTripById(jobId);
		masterService.deleteTrip(trip);
		model.addAttribute("driver", masterService.getDriverById(driverId));
		model.addAttribute("allJobs", DriverJobList.getAllTrips(masterService, driverId));
		return "transportation/driver_portal";
	}

	// REMOVE: Test method. Should be removed
	@GetMapping("/portal")
	public String authenticate() {
		return "transportation/driver_portal";
	}

	@GetMapping("/loginForm")
	public String getLoginForm() {
		return "transportation/driver_login";
	}

	@GetMapping("/transportForm")
	public String getTransportForm() {
		return "transportation/transportForm";
	}
}
