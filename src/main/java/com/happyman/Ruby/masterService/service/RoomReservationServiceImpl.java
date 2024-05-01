package com.happyman.Ruby.masterService.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.RoomReservation;
import com.happyman.Ruby.masterService.repository.RoomReservationRepository;

@Service
public class RoomReservationServiceImpl implements RoomReservationService {

	private final RoomReservationRepository roomReservationRepository;

	@Autowired
	public RoomReservationServiceImpl(RoomReservationRepository roomReservationRepository) {
		this.roomReservationRepository = roomReservationRepository;
	}

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

	/*@Override
	public List<RoomReservation> getAllRoomReservationsByRoomId(String roomId) {
		return getAllRoomReservations().stream().filter(
			roomReservation -> roomReservation.getRoom();
	}*/

	@Override
	public List<RoomReservation> getAllRoomReservationsByStartDate(LocalDate startDate) {
		return getAllRoomReservations().stream().filter(
			roomReservation -> roomReservation.getStartDate().equals(startDate)).toList();
	}

	@Override
	public List<RoomReservation> getAllRoomReservationsByEndDate(LocalDate endDate) {
		return getAllRoomReservations().stream().filter(
			roomReservation -> roomReservation.getEndDate().equals(endDate)).toList();
	}

	@Override
	public List<RoomReservation> getAllRoomReservationsByStartEndDate(LocalDate startDate, LocalDate endDate) {
		return getAllRoomReservations().stream().filter(
			roomReservation -> roomReservation.getStartDate().equals(startDate) && roomReservation.getEndDate().equals(
				endDate)).toList();
	}
}

