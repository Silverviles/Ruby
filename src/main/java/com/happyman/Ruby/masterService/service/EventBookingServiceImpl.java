package com.happyman.Ruby.masterService.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.happyman.Ruby.masterService.dao.EventBook;
import com.happyman.Ruby.masterService.repository.EventBookRepository;

@Service
public class EventBookingServiceImpl implements EventBookingService {
    private final EventBookRepository eventBookRepository;

    @Autowired
    public EventBookingServiceImpl(EventBookRepository eventBookRepository) {
        this.eventBookRepository = eventBookRepository;
    }

    @Override
    public List<EventBook> getAllbookingEvents() {
        return eventBookRepository.findAll();
    }

    @Override
    public EventBook getEventBookById(Integer id) {
        return eventBookRepository.findById(id).orElse(null);
    }

    @Override
    public EventBook getEventBookByName(String eventName) {
        return null;
    }

    @Override
    public EventBook getcustomerNameById(Integer customerName) {
        return null;
    }

    @Override
    public void bookEvents(EventBook eventBook) {

    }

    @Override
    public void deleteBookById(Integer id) {

    }

    @Override
    public List<EventBook> findAll() {
        return null;
    }

    @Override
    public EventBook findById(Integer id) {
        return null;
    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public EventBook save(EventBook eventBook) {
        return eventBookRepository.save(eventBook);
    }
}