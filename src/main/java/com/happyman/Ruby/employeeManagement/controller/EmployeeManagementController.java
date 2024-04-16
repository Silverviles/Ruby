package com.happyman.Ruby.employeeManagement.controller;

import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.employeeManagement.utils.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/employeeManagement")
public class EmployeeManagementController {

    private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/managementHome")
    public ResponseEntity<List<EmployeeDTO>> showManagementHome() {
        // Retrieve all employees
        List<EmployeeDTO> employees = employeeService.getAllEmployees();

        // Log all employee records
        logAllEmployeeRecords(employees);

        // Return the list of employees as JSON response
        return new ResponseEntity<>(employees, HttpStatus.OK);
    }

    private void logAllEmployeeRecords(List<EmployeeDTO> employees) {
        // Log all employee records
        for (EmployeeDTO employee : employees) {
            log.info("Employee ID: {}", employee.getEmployeeId());
            log.info("First Name: {}", employee.getFirstName());
            log.info("Last Name: {}", employee.getLastName());
            log.info("Email: {}", employee.getEmail());
            log.info("Contact No: {}", employee.getContactNo());
            log.info("Salary: {}", employee.getSalary());
        }
    }


}

