package com.happyman.Ruby.events.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.EventBook;

@Controller
@RequestMapping("/eventbooking")
public class EventBookingController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(EventBookingController.class);

    @GetMapping("/eventHome")
    public String goEvents() {
        return "events/events_home";
    }

    @GetMapping("/eventBookingForm")
    public String goEventsbooking() {
        return "events/booking_events";
    }
    @PostMapping("/bookevents")
    public String bookEvent(@ModelAttribute EventBook eventbook) {
        masterService.bookEvents(eventbook);
        return "redicect:/success";
    }

    @PostMapping("/deletebookedevent")
    public String deleteBookedEvent(Integer id, Model model) {
        masterService.deleteBookById(id);
        return "redirect:/admin/adminHome?showDiv=remove_book event";
    }
}