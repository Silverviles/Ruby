package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "addons")
public class Addon {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "addonId", nullable = false) private Integer id;

	@Column(name = "addonName", nullable = false, length = 50) private String addonName;

	@Column(name = "description", length = 200) private String description;

	@Column(name = "price") private Float price;

	@Column(name = "availability", nullable = false) private Byte availability;

	@Column(name = "image", length = 100) private String image;


}