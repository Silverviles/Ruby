package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
@Table(name = "reservation")
public class Reservation {
	@Id @Column(name = "booking_Id", nullable = false, length = 10) private String bookingId;

	@Column(name = "room_Reservation_Id", nullable = false) private Integer roomReservationId;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "trip_Id") private Trip trip;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "event_Id") private Event event;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "package_Id") private Package packageField;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "menu_Id") private Menu menu;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "payment_Id") private Payment payment;

	@Column(name = "discontinue_Date") private LocalDate discontinueDate;

}