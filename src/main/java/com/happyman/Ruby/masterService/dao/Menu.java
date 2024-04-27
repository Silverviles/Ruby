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
@Table(name = "menu")
public class Menu {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "menu_Id", nullable = false) private Integer id;

	@Column(name = "menu_Name", nullable = false, length = 50) private String menuName;

	@Column(name = "availability") private Byte availability;

	@Column(name = "price", nullable = false) private Double price;

	@Column(name = "dishType", nullable = false) private String dishType;

	@Column(name = "mealType", nullable = false) private String mealType;
}