package com.happyman.Ruby.billingAndReporting.dto;


import lombok.Getter;
import lombok.Setter;

import java.util.Map;

@Getter
@Setter
public class PaymentDTO {
	private Integer paymentId;
	private String bookingId;
	private String customerName;
	private String customerEmail;
	private Map<String, Map<Integer, Double>> records;
	private Float amount;
	private Byte paymentStatus;
}
