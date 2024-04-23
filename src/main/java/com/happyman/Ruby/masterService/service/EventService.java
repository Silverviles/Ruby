package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;

@Service
public interface EventService {

	List<Event> getAllEvents();

	Event getEventById(Integer eventId);

	Event getEventByName(String eventName);

	List<Event> getEventByAvailability(Byte availability);

	void addEvent(Event event);

	void deleteEvent(Integer eventId);

	void updateEvent(Event event);

	void updateEventByEventDTO(EventAddDTO eve);
}
