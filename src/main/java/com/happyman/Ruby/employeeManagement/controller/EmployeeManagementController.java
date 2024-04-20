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

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/employeeManagement")
public class EmployeeManagementController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);

    @GetMapping("/managementHome")
    public String showManagementHome(Model model) {
        List<Employee> employees = masterService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "employeeManagement/EmployeeManagement";
    }

    /*delete mapping changed to post mapping*/
    @PostMapping("/delete")
    public String deleteEmployee(@RequestParam("employeeId") Integer employeeId, Model model) {
        masterService.deleteEmployee(employeeId);
        List<Employee> employees = masterService.getAllEmployees();
        model.addAttribute("employees", employees);
       /* return "employeeManagement/EmployeeManagement";*/
        return "common/admin_sidebar";

    }

    @GetMapping("/navigatetoupdate")
    public String navigateToUpdate(@RequestParam("employeeId") Integer employeeId, Model model) {
        model.addAttribute("employeeId", employeeId); // Pass employeeId to the view
        model.addAttribute("editEmployee", masterService.getEmployeeById(employeeId));
        return "employeeManagement/UpdateEmployee";
    }


    @PostMapping("/update")
    public String updateEmployeeDetails(@RequestParam("employeeId") Integer employeeId,
                                        @ModelAttribute("editEmployee") EmployeeDTO updatedEmployeeDTO,
                                        Model model) {
        // Retrieve the existing employee from the database
        Employee existingEmployee = masterService.getEmployeeById(employeeId);

        if (existingEmployee != null) {
            // Update the existing employee with the data from the form
            existingEmployee.setFirstName(updatedEmployeeDTO.getFirstName());
            existingEmployee.setLastName(updatedEmployeeDTO.getLastName());
            existingEmployee.setEmail(updatedEmployeeDTO.getEmail());
            existingEmployee.setMobileNo(updatedEmployeeDTO.getContactNo());
            existingEmployee.setBaseSalary(updatedEmployeeDTO.getSalary());

            // Save the updated employee to the database
            masterService.updateEmployee(existingEmployee);

            // Redirect to the employee management page
            return "redirect:/employeeManagement/managementHome";
        } else {
            // Handle error, maybe show a message indicating the employee was not found
            return "errorPage"; // Redirect to an error page
        }
    }



}


