package com.happyman.Ruby.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/booking")
public class BookingController extends BaseController {
	@PostMapping("/room")
	public String processRoom(Integer roomId, String startDate, String endDate, Model model) {

		return "billingAndReporting/billingHome";
	}
}
