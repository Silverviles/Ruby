

package com.happyman.Ruby.employeeManagement.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.employeeManagement.utils.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/employeeManagement")
public class registerController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(registerController.class);



    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/registerHome")
    public String showRegistrationPage() {
        return "employeeManagement/Registration";
    }

//    @PostMapping("/registerEmployee")
//    public String registerEmployee(@RequestBody EmployeeDTO employee) {
//        employeeService.addEmployee(employee);
//        return "redirect:/employeeManagement/registerHome";
//    }
    /////////////////////////////
//    @PostMapping("/registerEmployee")
//    public String registerEmployee(EmployeeDTO employee) {
//        // Save the employee data to the database
//        employeeService.addEmployee(employee);
//        log.info("Employee registered: {}", employee.toString());
//        // Redirect to a confirmation page or back to the registration page with a success message
//        return "redirect:/employeeManagement/registerHome?success=true";
//    }
    @PostMapping("/registerEmployee")
    public String registerEmployee(EmployeeDTO employee) {
        // Log employee data obtained from getters
        System.out.println("Employee ID: " + employee.getId());
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
   @GetMapping("/getAllEmployees")
    public ModelAndView getAllEmployees() {
        List<EmployeeDTO> employees = employeeService.getAllEmployees();
        ModelAndView modelAndView = new ModelAndView("employeeManagement/getAllEmployees");
        modelAndView.addObject("employees", employees);
        return modelAndView;
    }
}




