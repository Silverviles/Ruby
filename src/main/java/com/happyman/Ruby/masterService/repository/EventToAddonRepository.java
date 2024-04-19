package com.happyman.Ruby.masterService.repository;

import com.happyman.Ruby.masterService.dao.EventToAddon;
import com.happyman.Ruby.masterService.dao.EventToAddonId;

import java.util.List;

public interface EventToAddonRepository extends BaseRepository<EventToAddon, EventToAddonId> {

    List<EventToAddon> findAllById_EventId(Integer EventId);
}
