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
@Table(name = "feedback")
public class Feedback {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "feedbackID", nullable = false) private Integer id;

	@Column(name = "userName", nullable = false) private String userName;

	@Column(name = "email", nullable = false) private String email;

	@Column(name = "bookingID", nullable = false) private String bookingID;

	@Column(name = "message", nullable = false) private String message;

	@Column(name = "isActive", nullable = false, columnDefinition = "boolean default false")
	private boolean isActive;


}
