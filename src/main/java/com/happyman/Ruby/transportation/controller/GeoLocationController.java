package com.happyman.Ruby.transportation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.maps.model.LatLng;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.transportation.dto.DistanceDTO;
import com.happyman.Ruby.transportation.utils.GeoLocation;

@Controller
@RequestMapping("/geoLocation")
public class GeoLocationController extends BaseController {
	@PostMapping("/distance")
	public DistanceDTO getDistanceAndDuration(@RequestBody LatLng destination){
		return GeoLocation.getDistance(destination);
	}
}
