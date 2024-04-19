package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.RoomReservation;
import com.happyman.Ruby.masterService.repository.RoomReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomReservationImpl implements RoomReservationService {

    @Autowired
    private RoomReservationRepository roomReservationRepository;

    @Override
    public void saveRoomReservation(RoomReservation roomReservation) {
        roomReservationRepository.save(roomReservation);
    }

    @Override
    public RoomReservation getRoomReservationById(Integer roomReservationId) {
        return roomReservationRepository.findById(roomReservationId).orElse(null);
    }

    @Override
    public List<RoomReservation> getAllRoomReservations() {
        return roomReservationRepository.findAll();
    }

    @Override
    public List<RoomReservation> getAllRoomReservationsByRoomId(Integer roomId) {
        return null;
    }
}

