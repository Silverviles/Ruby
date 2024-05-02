package com.happyman.Ruby.billingAndReporting.dto;


import lombok.Getter;
import lombok.Setter;

import java.util.Map;

@Getter
@Setter
public class PaymentDTO {
	private String bookingId;
	private String name;
	private String address;
	private String email;
	private Float subtotal;
	private Float total;
	private String paymentMethod;
}
