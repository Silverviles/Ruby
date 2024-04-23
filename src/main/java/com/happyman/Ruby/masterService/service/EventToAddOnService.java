package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.EventToAddon;

public interface EventToAddOnService {
	List<EventToAddon> getEventToAddonsByEventId(Integer eventId);

	List<Addon> getAddonsByEventId(Integer eventId);

	void addEventToAddon(EventToAddon eventToAddon);

	void deleteEventToAddonByEventId(Integer eventId);

	void deleteEventToAddon(EventToAddon eventToAddon);
}

