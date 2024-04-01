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
	@Id @Column(name = "bookingId", nullable = false, length = 10) private String bookingId;

	@Column(name = "roomReservationId", nullable = false) private Integer roomReservationId;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "tripId") private Trip trip;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "eventId") private Event event;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "packageId") private Package packageField;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "menuId") private Menu menu;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "paymentId") private Payment payment;

	@Column(name = "discontinueDate") private LocalDate discontinueDate;

}