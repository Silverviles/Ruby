package com.happyman.Ruby.masterService.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.EventToAddon;
import com.happyman.Ruby.masterService.repository.EventToAddonRepository;

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
	public List<Addon> getAddonsByEventId(Integer eventId) {
		return eventToAddonRepository.findAll().stream()
			.filter(eventToAddon -> eventToAddon.getEvent().getEventId().equals(eventId))
			.map(EventToAddon::getAddon) // Assuming getAddon() method exists to retrieve the addon from EventToAddon
			.collect(Collectors.toList());
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