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
@Table(name = "refund")
public class Refund {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "bookingId", nullable = false) private Integer id;

	@Column(name = "customerName", nullable = false) private String customerName;

	@Column(name = "customerEmail", nullable = false) private String customerEmail;

	@Column(name = "refundAmount", nullable = false) private Double refundAmount;

	@Column(name = "refundStatus") private Byte refundStatus;

}
