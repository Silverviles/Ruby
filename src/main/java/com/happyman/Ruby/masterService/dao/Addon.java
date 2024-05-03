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
@Table(name = "addons")
public class Addon {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "addon_Id", nullable = false) private Integer addonId;

	@Column(name = "addon_Name", nullable = false, length = 50) private String addonName;

	@Column(name = "description", length = 200) private String addonDescription;

	@Column(name = "price") private Float addonPrice;

	@Column(name = "availability", nullable = false) private Byte addonAvailability;

	@Column(name = "image", length = 100) private String addonImage;


}