package com.happyman.Ruby.events.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.events.dto.EventAddDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/events")

public class EventController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(EventController.class);


    @GetMapping("/eventHome")
    public String goEvents() {
        return "events/event";
    }

    @GetMapping("/getEventsEdit")
    public String displayEventsData(Model model) {
        List<EventAddDTO> events = masterService.getEventDTOList();
        model.addAttribute("allEvent", events);
        return "events/events_update";
    }

    @PostMapping("/addEvents")
    public String addEvents(@ModelAttribute EventAddDTO eventAddDTO) {
        if (EventAddDTO.getEventAvailability()== null) {
            EventAddDTO.setEventAvailability(false);
        }
        masterService.
        return "redirect:/success";
    }

    @PostMapping("/deleteEvent")
    public String deletePackage(@ModelAttribute EventAddDTO eventAddDTO) {
        masterService.deleteEvent(eventAddDTO.getEventId());
        return "redirect:/success";
    }

    @PostMapping("/updateEvent")
    public String updateEvent(@ModelAttribute EventAddDTO eventAddDTO) {
        masterService.updateEventAddDTO(eventAddDTO);
        return "redirect:/success";
    }
}
