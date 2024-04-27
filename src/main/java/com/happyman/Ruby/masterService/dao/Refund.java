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
	@Id @Column(name = "refund_id", nullable = false) private Integer id;

	@Column(name = "referenced_booking_id") private String referencedBookingId;

	@Column(name = "customer_name", nullable = false) private String customerName;

	@Column(name = "customer_email", nullable = false) private String customerEmail;

	@Column(name = "refund_amount", nullable = false) private Double refundAmount;

	@Column(name = "refunded_date") private LocalDate refundedDate;

	@Column(name = "refund_status") private Byte refundStatus;

}
