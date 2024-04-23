package com.happyman.Ruby.events.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Addon;

@Getter
@Setter
public class EventAddDTO {

	private Integer eventId;
	private String eventName;
	private String description;
	private String image;
	private Double price;
	private Boolean availability;
	private List<Addon> addonList;

}
