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

@Getter
@Setter
@Entity
@Table(name = "food_order")
public class FoodOrder {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "order_id", nullable = false) private Integer id;

	@Column(name = "customer_name", length = 50) private String customerName;

	@Column(name = "order_price", nullable = false) private Float orderPrice;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "seat_id") private Seat seat;

	@Column(name = "payment_status", nullable = false) private Byte paymentStatus;

	@Column(name = "time_slot", nullable = false)
	private java.sql.Time timeSlot;

	@Column(name = "meal_type", nullable = false)
	private String mealType;

	@Column(name = "booking_date", nullable = false)
	private java.sql.Date bookingDate;

	@Column(name = "number_of_guests", nullable = false)
	private Integer numberOfGuests;

	@Column(name = "availability", nullable = false)
	private String availability;

	@Column(name = "table_id", nullable = false)
	private Integer tableId;
}