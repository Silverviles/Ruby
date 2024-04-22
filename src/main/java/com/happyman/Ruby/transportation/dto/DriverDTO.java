package com.happyman.Ruby.transportation.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DriverDTO {
	private Integer driverId;
	private String firstName;
	private String lastName;
	private String vehicleType;
	private String vehicleNumber;
	private int seatCount;
	private String email;
	private String mobileNumber;
	private String password;

}
