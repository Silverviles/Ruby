package com.happyman.Ruby.employeeManagement.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.employeeManagement.utils.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class registerController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(registerController.class);

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/employeeManagement/registerHome")
    public String showRegistrationPage(Model model) {
        // Retrieve the next employee ID
        Long nextEmployeeId = employeeService.getNextEmployeeId().orElse(1L); // Default to ID 1 if not found
        model.addAttribute("nextEmployeeId", nextEmployeeId);
        return "employeeManagement/Registration";
    }

    @PostMapping("/employeeManagement/registerEmployee")
    public String registerEmployee(EmployeeDTO employee) {
        // Log employee data obtained from getters
        System.out.println("Employee ID: " + employee.getEmployeeId());
        System.out.println("First Name: " + employee.getFirstName());
        System.out.println("Last Name: " + employee.getLastName());
        System.out.println("Email: " + employee.getEmail());
        System.out.println("Contact No: " + employee.getContactNo());
        System.out.println("Salary: " + employee.getSalary());

        // Save the employee data to the database
        employeeService.addEmployee(employee);
        log.info("Employee registered: {}", employee.toString());
        // Redirect to a confirmation page or back to the registration page with a success message
        return "redirect:/employeeManagement/registerHome?success=true";
    }

    /*delete if not necessary*/
    /*added new*/
    @GetMapping("/employeeManagement/getAllEmployees")
    public ModelAndView getAllEmployees() {
        List<EmployeeDTO> employees = employeeService.getAllEmployees();
        ModelAndView modelAndView = new ModelAndView("employeeManagement/getAllEmployees");
        modelAndView.addObject("employees", employees);
        return modelAndView;
    }
}


//    //////////////////////////////////////////////
//
//
//
//
//
//    // New method for editing an employee
//    @GetMapping("/employeeManagement/editEmployee/{id}")
//    public String showEditEmployeePage(@PathVariable("id") Integer employeeId, Model model) {
//        // Retrieve the employee details by ID
//        EmployeeDTO employee = employeeService.getEmployeeById(employeeId);
//        model.addAttribute("employee", employee);
//        return "employeeManagement/updateEmployee"; // Assuming you have an edit employee page
//    }
//
//    // New method for updating an employee
////    @PostMapping("/employeeManagement/updateEmployee")
////    public String updateEmployee(EmployeeDTO employee) {
////        // Update the employee data in the databaseis this
////        employeeService.updateEmployee(employee);
////        log.info("Employee updated: {}", employee.toString());
////        // Redirect to a confirmation page or back to the edit page with a success message
////        return "redirect:/employeeManagement/editEmployee/" + employee.getEmployeeId() + "?success=true";
////    }
////
////    // New method for deleting an employee
////    @PostMapping("/employeeManagement/deleteEmployee")
////    public String deleteEmployee(@RequestParam("employeeId") Integer employeeId) {
////        // Delete the employee from the database
////        employeeService.deleteEmployee(employeeId);
////        log.info("Employee deleted with ID: {}", employeeId);
////        // Redirect to a confirmation page or back to the employee list page with a success message
////        return "redirect:/employeeManagement/getAllEmployees?deleteSuccess=true";
////    }
//
//
//}
