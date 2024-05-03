package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.CascadeType;
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


@Entity
@Getter
@Setter
@Table(name = "complaint")
public class Complaint {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "complaint_id") Integer complaintId;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL) @JoinColumn(name = "booking_id") Reservation reservation;

	@Column(name = "customer_name") private String customerName;

	@Column(name = "email") private String email;

	@Column(name = "complaint_description") private String complaintDesc;

}
