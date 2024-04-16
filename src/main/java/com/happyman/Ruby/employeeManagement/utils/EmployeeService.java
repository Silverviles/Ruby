package com.happyman.Ruby.employeeManagement.utils;

import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    private static final Logger log = LoggerFactory.getLogger(EmployeeService.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;



    public void addEmployee(EmployeeDTO employee) {
        log.info("Adding employee: {}", employee);
        String sql = "INSERT INTO employees (employee_id,first_name, last_name, email, mobile_no, base_salary) VALUES (?,?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, employee.getEmployeeId(),employee.getFirstName(), employee.getLastName(), employee.getEmail(), employee.getContactNo(), employee.getSalary());
        log.info("Employee added: {}", employee);
    }

    public List<EmployeeDTO> getAllEmployees() {
        String sql = "SELECT * FROM employees";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(EmployeeDTO.class));
    }


    public void logAllEmployeeRecords() {
        List<EmployeeDTO> employees = getAllEmployees();
        for (EmployeeDTO employee : employees) {
            log.info("Employee ID: {}", employee.getEmployeeId());
            log.info("First Name: {}", employee.getFirstName());
            log.info("Last Name: {}", employee.getLastName());
            log.info("Email: {}", employee.getEmail());
            log.info("Contact No: {}", employee.getContactNo());
            log.info("Salary: {}", employee.getSalary());
        }
    }

    public Optional<Long> getNextEmployeeId() {
        String sql = "SELECT MAX(employee_id) FROM employees";
        Long maxEmployeeId = jdbcTemplate.queryForObject(sql, Long.class);
        if (maxEmployeeId == null) {
            // If no employee exists yet, start from ID 1
            return Optional.of(1L);
        } else {
            // Increment the maximum employee ID by 1 to get the next ID
            return Optional.of(maxEmployeeId + 1);
        }
    }
}

