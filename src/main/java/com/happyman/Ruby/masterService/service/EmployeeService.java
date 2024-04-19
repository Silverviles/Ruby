package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Employee;

import java.util.List;

public interface EmployeeService {
    public void addEmployee(Employee employee);
    public List<Employee> getAllEmployees();
    public void updateEmployee(Employee employee);
    public Boolean deleteEmployee(Integer employeeID);
    public Employee getEmployeeById(Integer employeeID);

}