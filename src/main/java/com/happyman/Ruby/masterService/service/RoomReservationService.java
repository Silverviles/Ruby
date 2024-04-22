package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.RoomReservation;

import java.time.LocalDate;
import java.util.List;

public interface RoomReservationService {

    void saveRoomReservation(RoomReservation roomReservation);

    RoomReservation getRoomReservationById(Integer roomReservationId);

    List<RoomReservation> getAllRoomReservations();

    List<RoomReservation> getAllRoomReservationsByRoomId(Integer roomId);

    List<RoomReservation> getAllRoomReservationsByStartDate(LocalDate startDate);

    List<RoomReservation> getAllRoomReservationsByEndDate(LocalDate endDate);

    List<RoomReservation> getAllRoomReservationsByStartEndDate(LocalDate startDate, LocalDate endDate);
}
