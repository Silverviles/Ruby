package com.happyman.Ruby.transportation.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TripRequestDTO {
	private String destination;
	private String distance;
	private String duration;
	private String vehicle;
	private Float totalCost;
}
