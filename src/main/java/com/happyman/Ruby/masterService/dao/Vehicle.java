package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import com.happyman.Ruby.common.DomainConstants;

@Getter
@Setter
@Entity
@Table(name = "vehicle")
public class Vehicle {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "vehicle_Id", nullable = false) private Integer id;

	@Column(name = "vehicle_Type", nullable = false) private String vehicleType;

	@Column(name = "max_Count", nullable = false) private Integer maxCount;

	@Column(name = "vehicle_Number", nullable = false, unique = true) private String vehicleNumber;

}