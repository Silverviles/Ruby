package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@Entity
@Table(name = "package")
public class Package {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "packageId", nullable = false) private Integer id;

	@Column(name = "name", nullable = false, length = 100) private String name;

	@Lob @Column(name = "description", nullable = false) private String description;

	@Column(name = "price", nullable = false) private Float price;

	@Column(name = "discontinueDate") private LocalDate discontinueDate;

	@Column(name = "availability", nullable = false) private Boolean availability;

	@Column(name = "type", nullable = false) private String type;

	@Column(name = "maxAdults") private Integer maxAdults;

}