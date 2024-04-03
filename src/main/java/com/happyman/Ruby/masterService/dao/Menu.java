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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "menuId", nullable = false) private Integer id;

	@Column(name = "menuName", nullable = false, length = 50) private String menuName;

	@Column(name = "availability") private Byte availability;

	@Column(name = "price", nullable = false) private Float price;

}