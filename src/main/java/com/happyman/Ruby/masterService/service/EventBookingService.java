package com.happyman.Ruby.masterService.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.happyman.Ruby.masterService.dao.EventBook;

@Service
public interface EventBookingService {

    List<EventBook> getAllbookingEvents();

    EventBook getEventBookById(Integer id);

    EventBook getEventBookByName(String eventName);

    EventBook getcustomerNameById(Integer customerName);

    void bookEvents(EventBook eventBook);

    void deleteBookById(Integer id);

    List<EventBook> findAll();

    EventBook findById(Integer id);

    void deleteById(Integer id);

    EventBook save(EventBook eventBook);
}