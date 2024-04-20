package com.happyman.Ruby.events.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;
import jakarta.servlet.ServletContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
@RequestMapping("/events")

public class EventController extends BaseController implements ServletContextAware {

    private static final Logger log = LoggerFactory.getLogger(EventController.class);

    private ServletContext servletContext;

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

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
            eventAddDTO.setAvailable(event.getAvailability());
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
    public String addEvents(@ModelAttribute EventAddDTO eventAddDTO, @RequestParam("image") MultipartFile file) {
        Event event = new Event();
        if (!file.isEmpty()) {
            try {
                // Define the directory to save the file
                String uploadDir = servletContext.getRealPath("/images/events/");
                File directory = new File(uploadDir);
                if (!directory.exists()) {
                    directory.mkdirs();
                }

                // Get the original filename
                String fileName = StringUtils.cleanPath(file.getOriginalFilename());

                // Save the file to the specified directory
                String filePath = uploadDir + fileName;
                file.transferTo(new File(filePath));

                // Set the filename to the DTO
                event.setImage(fileName);
                event.setEventName(eventAddDTO.getEventName());
                event.setPrice(eventAddDTO.getPrice());
                event.setAvailability(eventAddDTO.getAvailable());
                event.setDescription(eventAddDTO.getDescription());
            } catch (IOException e) {
                log.error("Failed to upload file: " + e.getMessage());
            }
        }

        // Now you can save the DTO to the database
        masterService.addEvent(event);

        return "event/eventUpdate";
    }

    @PostMapping("/deleteEvent")
    public String deletePackage(@ModelAttribute EventAddDTO eventAddDTO) {
        masterService.deleteEvent(eventAddDTO.getEventId());
        return "event/eventUpdate";
    }

    @PostMapping("/updateEvent")
    public String updateEvent(@ModelAttribute EventAddDTO eventAddDTO) {
        Event event = new Event();
        event.setImage(eventAddDTO.getImage());
        event.setEventName(eventAddDTO.getEventName());
        event.setPrice(eventAddDTO.getPrice());
        event.setAvailability(eventAddDTO.getAvailable());
        event.setDescription(eventAddDTO.getDescription());
        masterService.addEvent(event);
        return "event/eventUpdate";
    }
}
