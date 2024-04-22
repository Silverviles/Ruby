package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Employee;

public interface EmployeeService {
	void addEmployee(Employee employee);

	List<Employee> getAllEmployees();

	void updateEmployee(Employee employee);

	Boolean deleteEmployee(Integer employeeID);

	Employee getEmployeeById(Integer employeeID);

}