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
@Table(name = "payment")
public class Payment {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "paymentId", nullable = false) private Integer id;

	@Column(name = "billAmount", nullable = false) private Float billAmount;

	@Column(name = "paymentStatus") private Byte paymentStatus;

}