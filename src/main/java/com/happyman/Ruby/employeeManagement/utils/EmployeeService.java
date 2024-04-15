package com.happyman.Ruby.employeeManagement.utils;

import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    private static final Logger log = LoggerFactory.getLogger(EmployeeService.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void addEmployee(EmployeeDTO employee) {
        if (employee != null) {
            log.info("Adding employee: {}", employee);
            String sql = "INSERT INTO employees (first_name, last_name, email, mobile_no, base_salary) VALUES (?, ?, ?, ?, ?)";
            try {
                jdbcTemplate.update(sql, employee.getFirstName(), employee.getLastName(), employee.getEmail(), employee.getContactNo(), employee.getSalary());
                log.info("Employee added: {}", employee);
            } catch (Exception e) {
                log.error("Error adding employee: {}", e.getMessage());
                // Handle the exception as needed, e.g., rethrow or log and continue
            }
        } else {
            log.warn("Cannot add null employee.");
        }
    }

    public List<EmployeeDTO> getAllEmployees() {
        String sql = "SELECT * FROM employees";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(EmployeeDTO.class));
    }


}
