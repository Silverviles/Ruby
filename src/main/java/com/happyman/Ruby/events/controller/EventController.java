package com.happyman.Ruby.events.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;

import java.io.IOException;


@Controller
@RequestMapping("/event")
public class EventController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(EventController.class);

	@PostMapping("/addEvent")
	public String addEvents(@ModelAttribute EventAddDTO eventAddDTO, Model model) {
		Event event = null;

		if (eventAddDTO.getEventId() != null) {
			event = masterService.getEventById(eventAddDTO.getEventId());
		}

		if (event == null) {
			event = new Event();
		}

		event.setEventName(eventAddDTO.getEventName());
		event.setPrice(eventAddDTO.getPrice());
		event.setAvailability(eventAddDTO.getAvailability() != null ? eventAddDTO.getAvailability() : false);
		event.setDescription(eventAddDTO.getDescription());
		event.setImage(eventAddDTO.getImage());

		masterService.addEvent(event);
		model.addAttribute("allEvent", masterService.getAllEvents());
		return "redirect:/admin/adminHome?showDiv=remove_event";
	}

	@PostMapping("/delete")
	public String deletePackage(Integer eventId, Model model) {
		masterService.deleteEvent(eventId);
		return "redirect:/admin/adminHome?showDiv=remove_event";
	}

	@PostMapping("/navigateToUpdate")
	public String goToUpdate(Integer eventId, RedirectAttributes model) {
		model.addFlashAttribute("editEvent", masterService.getEventById(eventId));
		return "redirect:/admin/adminHome?showDiv=new_event";
	}
}
