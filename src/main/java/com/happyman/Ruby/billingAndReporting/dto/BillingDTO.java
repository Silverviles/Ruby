package com.happyman.Ruby.billingAndReporting.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Addon;

@Getter
@Setter
public class BillingDTO {
	private String customerName;
	private String email;
	private String customerEmail;
	private boolean paymentMethod;
	private List<Addon> addonList;

}
