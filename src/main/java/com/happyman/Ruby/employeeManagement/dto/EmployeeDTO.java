package com.happyman.Ruby.employeeManagement.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmployeeDTO {
	private Integer employeeId;
	private String firstName;
	private String lastName;
	private String email;
	private String contactNo; // Changed from 'contact' to 'contactNo'
	private Double salary;
	// Changed from 'double' to 'Double'

	// Getters and setters
	// (Generated by Lombok)
}