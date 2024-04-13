package com.happyman.Ruby.transportation.dto;

import lombok.Getter;
import lombok.Setter;

import com.happyman.Ruby.common.DomainConstants;

@Setter
@Getter
public class DriverDTO {
	private Integer driverId;
	private String firstName;
	private String lastName;
	private DomainConstants.VehicleType vehicleType;
	private String vehicleNumber;
	private int seatCount;
	private String email;
	private String mobileNumber;
	private String password;

}
