package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.TableAvailability;
import com.happyman.Ruby.masterService.repository.TableAvailabilityRepository;
import lombok.NonNull;

import java.util.List;

public class TableAvailabilityServiceImpl implements TableAvailabilityService{
    private final TableAvailabilityRepository tableAvailabilityRepository;

    public TableAvailabilityServiceImpl(TableAvailabilityRepository tableAvailabilityRepository) {
        this.tableAvailabilityRepository = tableAvailabilityRepository;
    }

    public @NonNull List<TableAvailability> getAllSeats() {
        return tableAvailabilityRepository.findAll();
    }
}
