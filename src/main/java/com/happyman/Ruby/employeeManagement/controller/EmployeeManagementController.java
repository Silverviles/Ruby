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

    @PostMapping("/update")
    public String updateEmployeeDetails(@RequestParam("employeeId") Integer employeeId, Model model) {
        model.addAttribute("editEmployee", masterService.getEmployeeById(employeeId));
      return "employeeManagement/Registration";
        //return "common/admin_sidebar";
    }

}


