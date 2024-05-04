package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.TableAvailability;
import com.happyman.Ruby.masterService.repository.TableAvailabilityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TableAvailabilityServiceImpl implements TableAvailabilityService{
    private final TableAvailabilityRepository tableAvailabilityRepository;

    @Autowired
    public TableAvailabilityServiceImpl(TableAvailabilityRepository tableAvailabilityRepository) {
        this.tableAvailabilityRepository = tableAvailabilityRepository;
    }

    @Override
    public List<TableAvailability> getAllSeats() {
        return tableAvailabilityRepository.findAll();
    }

    @Override
    public TableAvailability getTableAvailabilityById() {
        return null;
    }

    @Override
    public Optional<TableAvailability> getTableAvailabilityById(Integer id){
        return tableAvailabilityRepository.findById(id);
    }
}
