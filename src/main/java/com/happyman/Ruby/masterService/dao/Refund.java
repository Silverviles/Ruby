package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@Entity
@Table(name = "refund")
public class Refund {
	@Id @Column(name = "refundId", nullable = false) private Integer id;

	@Column(name = "referencedBookingId") private String referencedBookingId;

	@Column(name = "customerName", nullable = false) private String customerName;

	@Column(name = "customerEmail", nullable = false) private String customerEmail;

	@Column(name = "refundAmount", nullable = false) private Double refundAmount;

	@Column(name = "refundedDate") private LocalDate refundedDate;

	@Column(name = "refundStatus") private Byte refundStatus;

}
