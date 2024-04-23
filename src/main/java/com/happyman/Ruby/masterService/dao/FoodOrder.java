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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "order_Id", nullable = false) private Integer id;

	@Column(name = "customer_Name", length = 50) private String customerName;

	@Column(name = "order_Price", nullable = false) private Float orderPrice;

	@ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "seat_Id") private Seat seat;

	@Column(name = "payment_Status", nullable = false) private Byte paymentStatus;

}