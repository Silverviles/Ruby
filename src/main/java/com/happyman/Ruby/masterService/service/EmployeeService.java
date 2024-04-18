package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Employee;

import java.util.List;

public interface EmployeeService {
    public void addEmployee(Employee employee);
    public List<Employee> getAllEmployees();
    public void updateEmployee(Employee employee);
    public boolean deleteEmployee(int employeeID);
}