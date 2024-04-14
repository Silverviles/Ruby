package com.happyman.Ruby.employeeManagement.utils;

import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService {

    private static final Logger log = LoggerFactory.getLogger(EmployeeService.class);


    // Simulating a database with a list
    private final List<EmployeeDTO> employeeDatabase = new ArrayList<>();

    // Method to add an employee to the "database"
    public void addEmployee(EmployeeDTO employee) {
        // Add the employee to the list
        employeeDatabase.add(employee);

        // Log the added employee
        log.info("Employee added: {}", employee);
    }

    // Method to get all employees from the "database"
    public List<EmployeeDTO> getAllEmployees() {
        // This will return all employees currently stored in the "database"
        return employeeDatabase;
    }
}




