package com.happyman.Ruby.transportation.controller;

import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.transportation.dto.DriverDTO;
import com.happyman.Ruby.transportation.utils.DriverAuthentication;

@Controller
@RequestMapping("/transport")
public class TransportController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(TransportController.class);

	@PostMapping("/login")
	public String getLogin(@ModelAttribute DriverDTO driverDTO, HttpServletResponse response, Model model) throws IOException {
		try {
			if (DriverAuthentication.verifyLogin(driverDTO, masterService)) {
				model.addAttribute("driver", masterService.getDriverByEmail(driverDTO.getEmail()));
				return "transportation/driver_portal";
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
	public String driverSignUp(@ModelAttribute DriverDTO driverDTO, HttpServletResponse response) throws IOException {
		if (DriverAuthentication.verifySignup(driverDTO, masterService)) {
			return "transportation/driver_portal";
		} else {
			response.setHeader("Error", "Registration failed. Please contact system administrator");
			return "transportation/driver_login";
		}
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
}
