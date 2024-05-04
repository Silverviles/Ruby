package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Seat;
import com.happyman.Ruby.masterService.dao.TableAvailability;

import java.util.List;
import java.util.Optional;

public interface TableAvailabilityService {
    List<TableAvailability> getAllSeats();
    TableAvailability getTableAvailabilityById(Integer id);

    void saveSeat(TableAvailability availability);



}
