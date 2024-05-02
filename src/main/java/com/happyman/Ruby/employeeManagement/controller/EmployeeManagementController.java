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

import com.happyman.Ruby.transportation.dto.DriverDTO;
import com.happyman.Ruby.transportation.utils.DriverAuthentication;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		return "employeeManagement/Home";
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
		employeeTemp.setShiftCategory(1);
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
}


