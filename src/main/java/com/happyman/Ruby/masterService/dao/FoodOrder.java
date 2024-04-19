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
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "orderId", nullable = false) private Integer id;

	@Column(name = "customerName", length = 50) private String customerName;

	@Column(name = "orderPrice", nullable = false) private Float orderPrice;

	@Column(name = "paymentStatus", nullable = false) private Byte paymentStatus;

}