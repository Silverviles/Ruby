package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "employee")
public class Employee {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "employeeId", nullable = false) private Integer id;

	@Column(name = "firstName", nullable = false, length = 45) private String firstName;

	@Column(name = "lastName", nullable = false, length = 45) private String lastName;

	@Column(name = "email", length = 100) private String email;

	@Column(name = "mobileNo", nullable = false, length = 10) private String mobileNo;

	@Column(name = "shiftType", nullable = false) private Integer ShiftCategory;

	@Column(name = "baseSalary", nullable = false) private double baseSalary;

}