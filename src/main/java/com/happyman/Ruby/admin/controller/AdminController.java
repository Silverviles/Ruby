package com.happyman.Ruby.admin.controller;

import java.util.Comparator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.happyman.Ruby.admin.dto.DashboardDTO;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.Complaint;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.dao.Event;
import com.happyman.Ruby.masterService.dao.Feedback;
import com.happyman.Ruby.masterService.dao.Menu;
import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.dao.Reservation;
import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.packages.controller.PackageController;
import com.happyman.Ruby.packages.dto.PackageDTO;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(PackageController.class);

	@GetMapping("/adminLogin")
	public String adminDashboard(@RequestParam("username") String username, @RequestParam("password") String password,Model model) {
		String expectedUsername = "admin";
		String expectedPassword = "password";
		List<Employee> employees = masterService.getAllEmployees();
		List<PackageDTO> packages = masterService.getPackageDTOList();
		List<Reservation> reservations = masterService.findAllCompletedReservations();
		List<Refund> refunds = masterService.findAllRefunds();
		List<Event> events = masterService.getAllEvents();
		List<Room> rooms = masterService.getAllRooms();
		List<Menu> menus = masterService.getAllMenus();
		List<Feedback> feedbacks = masterService.getAllFeedbacks();
		List<Complaint> complaints = masterService.findAllComplaints();
		List<Addon> addons = masterService.getAllAddons();

		DashboardDTO dashboard = new DashboardDTO();
		dashboard.setTotalRooms(rooms.size());
		dashboard.setAvailableRooms(rooms.stream().filter(room -> room.getRoomStatus().equals(true)).toList().size());
		dashboard.setUnavailableRooms(dashboard.getTotalRooms() - dashboard.getAvailableRooms());
		dashboard.setVillaCapacity(rooms.stream().mapToInt(Room::getRoomCapacity).sum());

		dashboard.setAllMeals(menus.size());
		dashboard.setAvailableMeals(
			menus.stream().filter(
				menu -> menu.getAvailability() != null && menu.getAvailability().equals(Byte.parseByte("1"))
			).toList().size());
		dashboard.setUnavailableMeals(dashboard.getAllMeals() - dashboard.getAvailableMeals());
		// Add seats

		dashboard.setAllPackages(packages.size());
		dashboard.setAvailablePackages(packages.stream().filter(packageDTO -> packageDTO.getPackageAvailability().equals(true)).toList().size());
		dashboard.setHighestAddonPackage(
			packages.stream()
				.max(Comparator.comparingInt(packageDTO -> packageDTO.getAddonList().size()))
				.map(PackageDTO::getPackageName)
				.orElse(null)
		);
		dashboard.setAvailableAddons(addons.size());

		// Events
		dashboard.setAllEvents(events.size());
		dashboard.setAvailableEvents(events.stream().filter(event -> event.getAvailability().equals(true)).toList().size());
		dashboard.setHighestEventPackage("");
		dashboard.setAvailableAddons(addons.size());

		// Customer
		dashboard.setFeedbackCount(feedbacks.size());
		dashboard.setPendingComplaints(complaints.stream().filter(complaint -> complaint.getStatus().equals(false)).toList().size());
		dashboard.setResolvedComplaints(complaints.stream().filter(complaint -> complaint.getStatus().equals(true)).toList().size());

		// Employee
		dashboard.setAllEmployees(employees.size());
		dashboard.setDayShift(employees.stream().filter(employee -> employee.getShiftCategory().equals(1)).toList().size());
		dashboard.setNightShift(dashboard.getAllEmployees() - dashboard.getDayShift());
		dashboard.setAverageSalary((float) (employees.stream().mapToDouble(Employee::getBaseSalary).sum() / employees.size()));
		dashboard.setHighestSalary((float) employees.stream().mapToDouble(Employee::getBaseSalary).max().orElse(1000.0));

		if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
			model.addAttribute("employees", employees);
			model.addAttribute("allPackages", packages);
			model.addAttribute("reservations", reservations);
			model.addAttribute("refunds", refunds);
			model.addAttribute("events", events);
			model.addAttribute("rooms", rooms);
			model.addAttribute("menus", menus);
			model.addAttribute("feedbacks", feedbacks);
			model.addAttribute("complaints", complaints);
			model.addAttribute("addonsPkg", addons);
			model.addAttribute("summary", dashboard);
			return "admin/admin_sidebar";
		} else {
			model.addAttribute("error", "Invalid credentials. Please try again.");
			return "home/Home";
		}
	}

	@GetMapping("/adminHome")
	public String adminDashboard(Model model) {
		List<Employee> employees = masterService.getAllEmployees();
		List<PackageDTO> packages = masterService.getPackageDTOList();
		List<Reservation> reservations = masterService.findAllCompletedReservations();
		List<Refund> refunds = masterService.findAllRefunds();
		List<Event> events = masterService.getAllEvents();
		List<Room> rooms = masterService.getAllRooms();
		List<Menu> menus = masterService.getAllMenus();
		List<Feedback> feedbacks = masterService.getAllFeedbacks();
		List<Complaint> complaints = masterService.findAllComplaints();
		List<Addon> addons = masterService.getAllAddons();

		DashboardDTO dashboard = new DashboardDTO();
		dashboard.setTotalRooms(rooms.size());
		dashboard.setAvailableRooms(rooms.stream().filter(room -> room.getRoomStatus().equals(true)).toList().size());
		dashboard.setUnavailableRooms(dashboard.getTotalRooms() - dashboard.getAvailableRooms());
		dashboard.setVillaCapacity(rooms.stream().mapToInt(Room::getRoomCapacity).sum());

		dashboard.setAllMeals(menus.size());
		dashboard.setAvailableMeals(
			menus.stream().filter(menu -> menu.getAvailability().equals(Byte.parseByte("1"))).toList().size());
		dashboard.setUnavailableMeals(dashboard.getAllMeals() - dashboard.getAvailableMeals());
		// Add seats

		dashboard.setAllPackages(packages.size());
		dashboard.setAvailablePackages(packages.stream().filter(packageDTO -> packageDTO.getPackageAvailability().equals(true)).toList().size());
		dashboard.setHighestAddonPackage(
			packages.stream()
				.max(Comparator.comparingInt(packageDTO -> packageDTO.getAddonList().size()))
				.map(PackageDTO::getPackageName)
				.orElse(null)
		);
		dashboard.setAvailableAddons(addons.size());

		// Events
		dashboard.setAllEvents(events.size());
		dashboard.setAvailableEvents(events.stream().filter(event -> event.getAvailability().equals(true)).toList().size());
		dashboard.setHighestEventPackage("");
		dashboard.setAvailableAddons(addons.size());

		// Customer
		dashboard.setFeedbackCount(feedbacks.size());
		dashboard.setPendingComplaints(complaints.stream().filter(complaint -> complaint.getStatus().equals(false)).toList().size());
		dashboard.setResolvedComplaints(complaints.stream().filter(complaint -> complaint.getStatus().equals(true)).toList().size());

		// Employee
		dashboard.setAllEmployees(employees.size());
		dashboard.setDayShift(employees.stream().filter(employee -> employee.getShiftCategory().equals(1)).toList().size());
		dashboard.setNightShift(dashboard.getAllEmployees() - dashboard.getDayShift());
		dashboard.setAverageSalary((float) (employees.stream().mapToDouble(Employee::getBaseSalary).sum() / employees.size()));
		dashboard.setHighestSalary((float) employees.stream().mapToDouble(Employee::getBaseSalary).max().orElse(1000.0));


		model.addAttribute("employees", employees);
		model.addAttribute("allPackages", packages);
		model.addAttribute("reservations", reservations);
		model.addAttribute("refunds", refunds);
		model.addAttribute("events", events);
		model.addAttribute("rooms", rooms);
		model.addAttribute("menus", menus);
		model.addAttribute("feedbacks", feedbacks);
		model.addAttribute("complaints", complaints);
		model.addAttribute("addonsPkg", addons);
		model.addAttribute("summary", dashboard);
		return "admin/admin_sidebar";
	}

}
