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
@Table(name = "seat")
public class Seat {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "seat_Id", nullable = false) private Integer id;

	@Column(name = "seat_Location", nullable = false, length = 3) private String seatLocation;

	@Column(name = "location_Availability", nullable = false) private Byte locationAvailability;

}