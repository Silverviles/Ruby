package com.happyman.Ruby.resturant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/restaurant")
public class RestaurantController {
	@GetMapping(value = "/food")
	public String getFood() {
		return "/restaurant/food";
	}
}
