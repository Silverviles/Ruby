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
@Table(name = "food")
public class Food {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "foodId", nullable = false) private Integer id;

	@Column(name = "foodName", nullable = false) private String foodName;

	@Column(name = "foodCategory", nullable = false) private String foodCategory;

	@Column(name = "foodPrice", nullable = false) private Double foodPrice;

	@Column(name = "foodAvailability", nullable = false) private Byte foodAvailability;

	@Column(name = "foodImg", nullable = false) private String foodImg;

}