package com.happyman.Ruby.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.packages.controller.PackageController;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(PackageController.class);

	@GetMapping("/adminLogin")
	public String adminDashboard(@RequestParam("username") String username, @RequestParam("password") String password,Model model) {
		String expectedUsername = "admin";
		String expectedPassword = "password";

		if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
			model.addAttribute("employees", masterService.getAllEmployees());
			model.addAttribute("allPackages", masterService.getPackageDTOList());
			model.addAttribute("reservations", masterService.findAllCompletedReservations());
			model.addAttribute("refunds", masterService.findAllRefunds());
			model.addAttribute("events", masterService.getAllEvents());
			model.addAttribute("rooms", masterService.getAllRooms());
			model.addAttribute("menus", masterService.getAllMenus());
			model.addAttribute("feedbacks", masterService.getAllFeedbacks());
			model.addAttribute("complaints", masterService.findAllComplaints());
			model.addAttribute("addonsPkg", masterService.getAllAddons());
			return "admin/admin_sidebar";
		} else {
			model.addAttribute("error", "Invalid credentials. Please try again.");
			return "home/Home";
		}
	}

	@GetMapping("/adminHome")
	public String adminDashboard(Model model) {
		model.addAttribute("employees", masterService.getAllEmployees());
		model.addAttribute("allPackages", masterService.getPackageDTOList());
		model.addAttribute("reservations", masterService.findAllCompletedReservations());
		model.addAttribute("refunds", masterService.findAllRefunds());
		model.addAttribute("events", masterService.getAllEvents());
		model.addAttribute("rooms", masterService.getAllRooms());
		model.addAttribute("menus", masterService.getAllMenus());
		model.addAttribute("feedbacks", masterService.getAllFeedbacks());
		model.addAttribute("complaints", masterService.findAllComplaints());
		model.addAttribute("addonsPkg", masterService.getAllAddons());
		return "admin/admin_sidebar";
	}

}
