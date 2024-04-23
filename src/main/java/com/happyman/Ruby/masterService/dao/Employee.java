package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "employee_Id", nullable = false) private Integer id;

	@Column(name = "first_Name", nullable = false, length = 45) private String firstName;

	@Column(name = "last_Name", nullable = false, length = 45) private String lastName;

	@Column(name = "email", length = 100) private String email;

	@Column(name = "mobile_No", nullable = false, length = 10) private String mobileNo;

    @Column(name = "shift_Type", nullable = false) private Integer ShiftCategory;

	@Column(name = "base_Salary", nullable = false) private double baseSalary;

}