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
@Table(name = "shift_category")
public class ShiftCategory {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "categoryId", nullable = false) private Integer id;

	@Column(name = "categoryName", nullable = false, length = 45) private String categoryName;

	@Column(name = "location", nullable = false, length = 45) private String location;

	@Column(name = "shiftDuration", nullable = false) private Integer shiftDuration;

	@Column(name = "shiftSalary", nullable = false) private Float shiftSalary;

}