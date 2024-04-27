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

}