package com.happyman.Ruby.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/booking")
public class BookingController extends BaseController {
	@PostMapping("/room")
	public String processRoom() {
		return "booking/room";
	}
}
