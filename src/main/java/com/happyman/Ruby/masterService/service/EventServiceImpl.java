package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;
import com.happyman.Ruby.masterService.repository.EventRepository;

import java.util.List;

public class EventServiceImpl implements EventService {
    private final EventRepository eventRepository;

    public EventServiceImpl(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    @Override
    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    @Override
    public Event getEventById(Integer eventId) {
        return eventRepository.findById(eventId)
                .orElseThrow(() -> new RuntimeException("Event not found with id: " + eventId));
    }

    @Override
    public Event getEventByName(String eventName) {
        List<Event> events = eventRepository.findAll();
        for (Event eve : events) {
            if (eve.getEventName().equals(eventName)) {
                return eve;
            }
        }
        return null;
    }

    @Override
    public List<Event> getEventByAvailability(Byte availability) {
        List<Event> events = eventRepository.findAll();
        for (Event eve : events) {
            if (eve.getAvailability().equals(availability)) {
                events.add(eve);
            }
        }
        return null;
    }

    @Override
    public void addEvent(Event event) {
        eventRepository.save(event);
    }

    @Override
    public void deleteEvent(Integer eventId) {
        eventRepository.deleteById(eventId);
    }

    @Override
    public void updateEvent(EventAddDTO event) {

    }

    @Override
    public void updateEventByEventDTO(EventAddDTO eve) {
        Event e = this.getEventById(eve.getEventId());
        e.setEventName(eve.getEventName());
        e.setAvailability(eve.getAvailable());
        e.setDescription(eve.getAdminDescription());
        e.setPrice(eve.getPriceInput());
        e.setImage(eve.getImageInput());
        eventRepository.save(e);
    }
}
