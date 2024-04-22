package com.happyman.Ruby.transportation.controller;

import org.springframework.http.ResponseEntity;
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
	public ResponseEntity<DistanceDTO> getDistanceAndDuration(@RequestBody LatLng destination) {
		DistanceDTO distanceDTO = GeoLocation.getDistance(destination);
		return ResponseEntity.ok().body(distanceDTO);
	}
}
