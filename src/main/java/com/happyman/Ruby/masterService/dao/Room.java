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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "room_Id", nullable = false) private Integer id;

	@Column(name = "room_Name", nullable = false, length = 45) private String roomName;

	@Enumerated(EnumType.STRING) @Column(name = "room_Type", nullable = false) private DomainConstants.RoomType roomType;

	@Column(name = "room_Capacity", nullable = false) private Integer roomCapacity;

	@Column(name = "room_Price", nullable = false) private Float roomPrice;

	@Column(name = "room_Status", nullable = false) private Byte roomStatus;

}