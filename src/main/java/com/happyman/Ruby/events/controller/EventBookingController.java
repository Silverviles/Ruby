package com.happyman.Ruby.events.controller;

import com.happyman.Ruby.events.dto.EventBookDTO;
import com.happyman.Ruby.masterService.dao.Event;
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
@RequestMapping("/event_booking")
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
    @PostMapping("/book_events")
    public String bookEvent(@ModelAttribute EventBookDTO eventBookDTO, Model model) {
        EventBook eventBook = null;

        if (eventBookDTO.getId() != null) {
            eventBook = masterService.getEventBookById(eventBook.getId());
        }

        if (eventBookDTO == null) {
            eventBook = new EventBook();
        }

        eventBook.setId(eventBookDTO.getId());
        eventBook.setCustomerName(eventBookDTO.getCustomerName());
        eventBook.setEventType(eventBookDTO.getEventType());
        eventBook.setDate(eventBookDTO.getDate());
        eventBook.setLocation(eventBookDTO.getLocation());
        eventBook.setNoOfMembers(eventBookDTO.getNoOfMembers());
        eventBookDTO.setCustomerDescription(eventBookDTO.getCustomerDescription());

        masterService.bookEvent(eventBook);
        model.addAttribute("allEvent", masterService.getAllEvents());
        return "redirect:/success";
    }

    @PostMapping("/delete_book_event")
    public String deleteBookedEvent(Integer id, Model model) {
        masterService.deleteBookById(id);
        return "redirect:/admin/adminHome?showDiv=remove_book event";
    }
}