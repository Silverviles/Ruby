package com.happyman.Ruby.transportation.dto;

import lombok.Getter;
import lombok.Setter;

import com.happyman.Ruby.masterService.dao.Driver;

@Getter
@Setter
public class TripDTO {
	private Integer id;
	private Driver driver;
	private Byte tripStatus;
	private String tripDestination;
	private Long totalCost;
	private String finishedDate;
}
