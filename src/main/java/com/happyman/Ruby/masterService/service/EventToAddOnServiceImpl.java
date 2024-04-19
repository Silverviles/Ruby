package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.EventToAddon;
import com.happyman.Ruby.masterService.repository.EventToAddonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventToAddOnServiceImpl implements EventToAddOnService {

    private final EventToAddonRepository eventToAddonRepository;

    @Autowired
    public EventToAddOnServiceImpl(EventToAddonRepository eventToAddonRepository) {
        this.eventToAddonRepository = eventToAddonRepository;
    }

    @Override
    public List<EventToAddon> getEventToAddonsByEventId(Integer eventId) {
        return eventToAddonRepository.findAllById_EventId(eventId);
    }

    @Override
    public void addEventToAddon(EventToAddon eventToAddon) {
        eventToAddonRepository.save(eventToAddon);
    }

    @Override
    public void deleteEventToAddonByEventId(Integer eventId) {
        List<EventToAddon> eventToAddons = eventToAddonRepository.findAllById_EventId(eventId);
        eventToAddonRepository.deleteAll(eventToAddons);
    }

    @Override
    public void deleteEventToAddon(EventToAddon eventToAddon) {
        eventToAddonRepository.delete(eventToAddon);
    }

}