//package com.happyman.Ruby.employeeManagement.controller;
//
//import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
//import com.happyman.Ruby.masterService.service.EmployeeService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("/employeeManagement")
//public class EmployeeManagementController {
//
//    private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);
//
////    @Autowired
////    private EmployeeService employeeService;
//
//    @GetMapping("/managementHome")
//    public String showManagementHome(Model model) {
//        // Retrieve all employees
////        List<EmployeeDTO> employees = employeeService.getAllEmployees();
//
//        // Add the list of employees to the model
////        model.addAttribute("employees", employees);
//
//        // Return the name of the JSP file
//        return "employeeManagement/EmployeeManagement"; // Assuming you have a JSP file named "EmployeeManagement.jsp" under "WEB-INF/views/employeeManagement/"
//    }
//}
package com.happyman.Ruby.employeeManagement.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.masterService.dao.Employee;

@Controller
@RequestMapping("/employeeManagement")
public class EmployeeManagementController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);


	@GetMapping("/StartHome")
	public String goHome() {
		return "home/Home";
	}


	@GetMapping("/managementHome")
	public String showManagementHome(Model model) {
		List<Employee> employees = masterService.getAllEmployees();
		model.addAttribute("employees", employees);
		return "employeeManagement/EmployeeManagement";
	}

	/*delete mapping changed to post mapping*/
	@PostMapping("/delete")
	public String deleteEmployee(Integer employeeId, Model model) {
		masterService.deleteEmployee(employeeId);
		return "redirect:/admin/adminHome?showDiv=emp_updateDelete";
	}

	@PostMapping("/navigateToUpdate")
	public String navigateToUpdate(Integer employeeId, RedirectAttributes model) {
		model.addFlashAttribute("employeeId", employeeId);
		model.addFlashAttribute("editEmployee", masterService.getEmployeeById(employeeId));
		return "redirect:/admin/adminHome?showDiv=emp_registration";
	}

	@PostMapping("/registerEmployee")
	public String registerEmployee(EmployeeDTO employee, Model model) {
		Employee employeeTemp = new Employee();
		if(employee.getEmployeeId() != null){
			employeeTemp = masterService.getEmployeeById(employee.getEmployeeId());
		}
		employeeTemp.setFirstName(employee.getFirstName());
		employeeTemp.setLastName(employee.getLastName());
		employeeTemp.setEmail(employee.getEmail());
		employeeTemp.setMobileNo(employee.getContactNo());
		employeeTemp.setBaseSalary(employee.getSalary());
//		employeeTemp.setShiftCategory(1);
		employeeTemp.setShiftCategory(employee.getShift());
		masterService.addEmployee(employeeTemp);
		log.info("Employee registered: {}", employee);
		return "redirect:/admin/adminHome?showDiv=emp_updateDelete";
	}

	@GetMapping("/employeeManagement/registerHome")
	public String showRegistrationPage(Model model) {
		model.addAttribute("employees", masterService.getAllEmployees());
		return "employeeManagement/EmployeeManagement";
	}


//	@PostMapping("/login")
//	public String getLogin(
//			@ModelAttribute EmployeeDTO employeeDTO,
//			HttpServletResponse response,
//			Model model
//	) {
//		try {
//			if (DriverAuthentication.verifyLogin(employeeDTO, masterService)) {
//				return getPortalString(employeeDTO, model);
//			} else {
//				response.setHeader("Error", "Invalid username or password");
//				return "EmployeeManagement/AdminLogin";
//			}
//		} catch (Exception e) {
//			response.setHeader("Error", "Unknown error occurred. Please contact system administrator");
//			return "EmployeeManagement/AdminLogin";
//		}
//	}
/*
	// Mapping for displaying the login form
	@GetMapping("/admin")
	public String showLoginForm() {
		return "admin/AdminLogin"; // Assuming "admin/login.html" is your login form
	}

	*//*// Mapping for handling login form submission
	@PostMapping("/login")
	public String processLogin(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			Model model,
			RedirectAttributes redirectAttributes
	) {
		// Simulated admin credentials (replace with actual authentication logic)
		String expectedUsername = "admin";
		String expectedPassword = "password";

		// Validate credentials
		if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
			// Authentication successful
			// Redirect to admin dashboard or home page
			return "admin/admin_sidebar"; // Assuming "/admin/dashboard" is the admin dashboard URL
		} else {
			// Authentication failed
			model.addAttribute("error", "Invalid credentials. Please try again.");
			return "home/Home"; // Return to login form with error message
		}
	}*/
}


