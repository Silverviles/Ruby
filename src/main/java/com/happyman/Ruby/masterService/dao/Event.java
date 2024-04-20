package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "event")
public class Event {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "eventId", nullable = false) private Integer id;

	@Column(name = "eventName", nullable = false, length = 50) private String eventName;

	@Lob @Column(name = "description") private String description;

	@Column(name = "price") private Double price;

	@Column(name = "availability", nullable = false) private Byte availability;

	@Column(name = "image", length = 100) private String image;

}