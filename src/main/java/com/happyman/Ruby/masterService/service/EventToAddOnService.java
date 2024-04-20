package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.EventToAddon;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EventToAddOnService {
    List<EventToAddon> getEventToAddonsByEventId(Integer eventId);

    List<Addon> getAddonsByEventId(Integer eventId);

    void addEventToAddon(EventToAddon eventToAddon);

    void deleteEventToAddonByEventId(Integer eventId);

    void deleteEventToAddon(EventToAddon eventToAddon);
}

