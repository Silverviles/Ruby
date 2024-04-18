package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Seat;
import com.happyman.Ruby.masterService.repository.SeatRepository;

@Service
public class SeatServiceImpl implements SeatService {
	private final SeatRepository seatRepository;

	@Autowired
	public SeatServiceImpl(SeatRepository seatRepository) {
		this.seatRepository = seatRepository;
	}

	@Override
	public void saveSeat(Seat seat) {
		seatRepository.save(seat);
	}

	@Override
	public Seat findSeatById(Integer seatId) {
		return seatRepository.findById(seatId).orElse(null);
	}

	@Override
	public List<Seat> getAllSeats() {
		return seatRepository.findAll();
	}

	@Override
	public List<Seat> getAllSeatsByAvailability(Byte availability) {
		return getAllSeats().stream().filter(seat -> seat.getLocationAvailability().equals(availability)).toList();
	}

	@Override
	public Seat findSeatByLocation(String location) {
		return getAllSeats().stream().filter(
			seat -> seat.getSeatLocation().equals(location)).toList().stream().findFirst().orElse(null);
	}
}
