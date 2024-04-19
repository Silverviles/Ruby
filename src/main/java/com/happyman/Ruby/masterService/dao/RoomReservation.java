package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@Entity
@Table(name = "room_reservation")
public class RoomReservation {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "roomReservationId", nullable = false) private Integer id;

	@ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "roomId", nullable = false) private Room room;

	@Column(name = "startDate", nullable = false) private LocalDate startDate;

	@Column(name = "endDate", nullable = false) private LocalDate endDate;

	@Column(name = "guest", nullable = false) private Integer noGuest;

}