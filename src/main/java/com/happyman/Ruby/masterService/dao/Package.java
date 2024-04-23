package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

import com.happyman.Ruby.common.DomainConstants;

@Getter
@Setter
@Entity
@Table(name = "package")
public class Package {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "package_Id", nullable = false) private Integer id;

	@Column(name = "name", nullable = false, length = 100) private String name;

	@Lob @Column(name = "description", nullable = false) private String description;

	@Column(name = "price", nullable = false) private Float price;

	@Column(name = "discontinue_Date") private LocalDate discontinueDate;

	@Column(name = "availability", nullable = false) private Boolean availability;

	@Enumerated(EnumType.STRING) @Column(name = "type") private DomainConstants.PackageType type;

	@Column(name = "max_Adults") private Integer maxAdults;

}