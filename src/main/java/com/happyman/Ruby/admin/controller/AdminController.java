package com.happyman.Ruby.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.packages.controller.PackageController;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(PackageController.class);

	@GetMapping("/adminHome")
	public String goTemp1(Model model) {
		model.addAttribute("employees", masterService.getAllEmployees());
		model.addAttribute("allPackages", masterService.getPackageDTOList());
		model.addAttribute("reservations", masterService.findAllCompletedReservations());
		model.addAttribute("refunds", masterService.findAllRefunds());
		model.addAttribute("events", masterService.getAllEvents());
		return "admin/admin_sidebar";
	}

}
