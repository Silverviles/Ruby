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

import com.happyman.Ruby.common.DomainConstants;

@Getter
@Setter
@Entity
@Table(name = "room")
public class Room {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "roomId", nullable = false) private Integer id;

	@Column(name = "roomName", nullable = false, length = 45) private String roomName;

	@Column(name = "roomType", nullable = false) private String roomType;

	@Column(name = "roomCapacity", nullable = false) private Integer roomCapacity;

	@Column(name = "roomPrice", nullable = false) private Float roomPrice;

	@Column(name = "roomStatus", nullable = false) private Boolean roomStatus;
}