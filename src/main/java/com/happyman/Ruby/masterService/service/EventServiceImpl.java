package com.happyman.Ruby.masterService.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;
import com.happyman.Ruby.masterService.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService {
	private final EventRepository eventRepository;

	@Autowired
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
		return eventRepository.findAll().stream().filter(
			event -> event.getAvailability().equals(availability)).toList();
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
	public void updateEvent(Event event) {
		Optional<Event> existingEventOptional = eventRepository.findById(event.getEventId());
		if (existingEventOptional.isPresent()) {
			Event existingEvent = existingEventOptional.get();
			existingEvent.setEventName(event.getEventName());
			existingEvent.setAvailability(event.getAvailability());
			existingEvent.setDescription(event.getDescription());
			existingEvent.setPrice(event.getPrice());
			existingEvent.setImage(event.getImage());
			eventRepository.save(existingEvent);
		}
	}

	@Override
	public void updateEventByEventDTO(EventAddDTO eve) {
		Event e = this.getEventById(eve.getEventId());
		e.setEventName(eve.getEventName());
		e.setAvailability(eve.getAvailability());
		e.setDescription(eve.getDescription());
		e.setPrice(eve.getPrice());
		e.setImage(eve.getImage());
		eventRepository.save(e);
	}
}
