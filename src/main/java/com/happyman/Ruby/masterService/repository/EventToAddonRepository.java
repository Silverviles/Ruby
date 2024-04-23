package com.happyman.Ruby.masterService.repository;

import java.util.List;

import com.happyman.Ruby.masterService.dao.EventToAddon;
import com.happyman.Ruby.masterService.dao.EventToAddonId;

public interface EventToAddonRepository extends BaseRepository<EventToAddon, EventToAddonId> {

	List<EventToAddon> findAllById_EventId(Integer EventId);
}
