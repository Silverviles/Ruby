package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "trip")
public class Trip {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "trip_Id", nullable = false) private Integer id;

	@OneToOne(fetch = FetchType.LAZY) @JoinColumn(name = "driver_Id", nullable = false) private Driver driver;

	@Column(name = "trip_Status", nullable = false) private Byte tripStatus;

	@Column(name = "trip_Destination", nullable = false) private String tripDestination;

	@Column(name = "total_Cost", nullable = false) private Float totalCost;

	@Column(name = "finished_Date") private Date finishedDate;
}