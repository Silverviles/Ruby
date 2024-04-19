package com.happyman.Ruby.transportation.controller;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
		HttpSession session,
		Model model
	) {
		try {
			if (DriverAuthentication.verifyLogin(driverDTO, masterService)) {
				return getPortalString(driverDTO, session, model);
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
		HttpSession session,
		Model model
	) {
		if (DriverAuthentication.verifySignup(driverDTO, masterService)) {
			return getPortalString(driverDTO, session, model);
		} else {
			response.setHeader("Error", "Registration failed. Please contact system administrator");
			return "transportation/driver_login";
		}
	}

	private String getPortalString (@ModelAttribute DriverDTO driverDTO, HttpSession session, Model model) {
		Driver driver = masterService.getDriverByEmail(driverDTO.getEmail());

		session.setAttribute("driverId", driver.getId());
		session.setMaxInactiveInterval(600);

		model.addAttribute("driver", driver);
		model.addAttribute("allJobs", DriverJobList.getAllTrips(masterService, driver.getId()));

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
	public String getTransportForm(){
		return "transportation/transportForm";
	}
}
