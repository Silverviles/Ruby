package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "driver")
public class Driver {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "driverId", nullable = false) private Integer id;

	@Column(name = "firstName", nullable = false, length = 45) private String firstName;

	@Column(name = "lastName", nullable = false, length = 45) private String lastName;

	@Column(name = "email", nullable = false, length = 100) private String email;

	@Column(name = "mobileNo", nullable = false, length = 10) private String mobileNo;

	@Column(name = "password", nullable = false, length = 100) private String password;

	@OneToOne(fetch = FetchType.LAZY, optional = false, cascade = CascadeType.REMOVE) @JoinColumn(name = "vehicle", nullable = false) private Vehicle vehicle;

}