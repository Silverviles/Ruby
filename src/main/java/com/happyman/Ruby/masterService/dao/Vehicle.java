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
@Table(name = "vehicle")
public class Vehicle {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "vehicleId", nullable = false) private Integer id;

	@Column(name = "vehicleType", nullable = false) private String vehicleType;

	@Column(name = "maxCount", nullable = false) private Integer maxCount;

	@Column(name = "vehicleNumber", nullable = false, unique = true) private String vehicleNumber;

}