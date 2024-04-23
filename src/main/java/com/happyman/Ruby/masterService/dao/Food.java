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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "food_Id", nullable = false) private Integer id;

	@Enumerated(EnumType.STRING) @Column(name = "food_Category", nullable = false, length = 45) private DomainConstants.FoodCategory foodCategory;

	@Column(name = "food_Price", nullable = false) private Double foodPrice;

	@Column(name = "food_Availability", nullable = false) private Byte foodAvailability;

	@Column(name = "food_Img", nullable = false, length = 100) private String foodImg;

}