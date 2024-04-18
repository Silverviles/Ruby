package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.repository.EmployeeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    private static final Logger log = LoggerFactory.getLogger(EmployeeServiceImpl.class);

    private final EmployeeRepository employeeRepository;

    public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }


    @Override
    public void addEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    @Override
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }


    @Override
    public void updateEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    @Override
    public boolean deleteEmployee(int employeeID) {
        Optional<Employee> byId = employeeRepository.findById(employeeID);
        if (byId.isPresent()){
            employeeRepository.delete(byId.get());
            return  true;
        }else {
            return false;
        }
    }
}