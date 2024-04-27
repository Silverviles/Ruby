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
@Table(name = "room")
public class Room {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "room_id", nullable = false) private Integer roomId;

	@Column(name = "room_name", nullable = false, length = 45) private String roomName;

	@Column(name = "room_type", nullable = false) private String roomType;

	@Column(name = "room_capacity", nullable = false) private Integer roomCapacity;

	@Column(name = "room_price", nullable = false) private Float roomPrice;

	@Column(name = "room_status", nullable = false) private Boolean roomStatus;
}