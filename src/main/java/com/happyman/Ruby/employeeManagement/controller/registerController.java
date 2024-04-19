package com.happyman.Ruby.employeeManagement.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class registerController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(registerController.class);

    @Autowired
    private EmployeeService employeeService;


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
        Employee employeeTemp=new Employee();

        employeeTemp.setFirstName(employee.getFirstName());
        employeeTemp.setLastName(employee.getLastName());
        employeeTemp.setEmail(employee.getEmail());
        employeeTemp.setMobileNo(employee.getContactNo());
        employeeTemp.setBaseSalary(employee.getSalary());
        employeeTemp.setShiftCategory(1);
        employeeService.addEmployee(employeeTemp);
        log.info("Employee registered: {}", employee.toString());
        // Redirect to a confirmation page or back to the registration page with a success message
        return "redirect:/employeeManagement/registerHome?success=true";
    }




    @GetMapping("/employeeManagement/registerHome")
    public String showRegistrationPage(Model model) {
        // Retrieve the next employee ID
//        Long nextEmployeeId = employeeService.getNextEmployeeId().orElse(1L); // Default to ID 1 if not found
        model.addAttribute("employees", masterService.getAllEmployees());
        return "employeeManagement/Registration";
    }

///*new*/
//    @PostMapping("/employeeManagement/delete/{employeeID}")
//    public String deleteEmployee(@PathVariable Integer employeeID) {
//       Boolean deleted = employeeService.deleteEmployee(employeeID);
//        if(deleted) {
//            // Redirect to a success page or back to the employee management page with a success message
//            return "redirect:/employeeManagement/registerHome?deleteSuccess=true";
//        } else {
//            // Redirect to a failure page or back to the employee management page with an error message
//            return "redirect:/employeeManagement/registerHome?deleteError=true";
//        }
//    }
//
//    @PostMapping("/employeeManagement/update")
//    public String updateEmployeeDetails(@RequestParam("employeeId") Integer employeeId, Model model) {
//        // Fetch the employee details by ID and pass them to the update form
//        Employee employee = employeeService.getEmployeeById(employeeId);
//        model.addAttribute("employee", employee);
//        return "employeeManagement/UpdateEmployee"; // Assuming you have an update employee page
//    }


































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
