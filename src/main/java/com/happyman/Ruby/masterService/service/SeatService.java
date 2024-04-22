package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Seat;

public interface SeatService {
	void saveSeat(Seat seat);

	Seat findSeatById(Integer seatId);

	List<Seat> getAllSeats();

	List<Seat> getAllSeatsByAvailability(Byte availability);

	Seat findSeatByLocation(String location);
}
