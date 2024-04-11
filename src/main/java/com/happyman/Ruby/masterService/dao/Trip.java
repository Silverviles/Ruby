package com.happyman.Ruby.masterService.dao;

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
@Table(name = "trip")
public class Trip {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "tripId", nullable = false) private Integer id;

	@OneToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "driverId", nullable = false) private Driver driver;

	@Column(name = "tripStatus", nullable = false) private Byte tripStatus;

	@Column(name = "tripDestination", nullable = false) private String tripDestination;

	@Column(name = "totalCost", nullable = false) private Long totalCost;
}