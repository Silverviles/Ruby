package com.happyman.Ruby.events.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;
import jakarta.servlet.ServletContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/event")
public class EventController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(EventController.class);

    @GetMapping("/eventHome")
    public String goEvents() {
        return "events/event";
    }

    @GetMapping("/getEventsEdit")
    public String displayEventsData(Model model) {
        List<Event> events = masterService.getAllEvents();
        List<EventAddDTO> addList = new ArrayList<>();
        for (Event event : events){
            EventAddDTO eventAddDTO = new EventAddDTO();
            eventAddDTO.setEventId(event.getId());
            eventAddDTO.setEventName(event.getEventName());
            eventAddDTO.setAvailability(event.getAvailability());
            eventAddDTO.setDescription(event.getDescription());
            eventAddDTO.setPrice(event.getPrice());
            eventAddDTO.setImage(event.getImage());
            eventAddDTO.setAddonList(masterService.getAddonsByEventId(event.getId()));
            addList.add(eventAddDTO);
        }
        model.addAttribute("allEvent", addList);
        return "event/eventUpdate";
    }

    @PostMapping("/addEvents")
    public String addEvents(@ModelAttribute EventAddDTO eventAddDTO, Model model) {
        Event event = new Event();
        event.setId(eventAddDTO.getEventId() != null ? eventAddDTO.getEventId() : null);
        event.setEventName(eventAddDTO.getEventName());
        event.setPrice(eventAddDTO.getPrice());
        event.setAvailability(eventAddDTO.getAvailability() != null ? eventAddDTO.getAvailability() : false);
        event.setDescription(eventAddDTO.getDescription());

        masterService.addEvent(event);
        model.addAttribute("allEvent", masterService.getAllEvents());
        return "event/eventUpdate";
    }

    @PostMapping("/delete")
    public String deletePackage(Integer eventId, Model model) {
        masterService.deleteEvent(eventId);
        model.addAttribute("allEvent", masterService.getAllEvents());
        return "event/eventUpdate";
    }

    @PostMapping("/updateForm")
    public String goToUpdate(Integer eventId, Model model) {
        model.addAttribute("event", masterService.getEventById(eventId));
        return "event/eventAdd";
    }

    @PostMapping("/update")
    public String updateEvent(@ModelAttribute EventAddDTO eventAddDTO, Model model) {
        Event event = new Event();
        event.setEventName(eventAddDTO.getEventName());
        event.setPrice(eventAddDTO.getPrice());
        event.setAvailability(eventAddDTO.getAvailability());
        event.setDescription(eventAddDTO.getDescription());
        masterService.addEvent(event);
        model.addAttribute("allEvent", masterService.getAllEvents());
        return "event/eventUpdate";
    }
}
