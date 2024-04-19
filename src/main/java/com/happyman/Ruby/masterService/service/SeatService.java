package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Seat;

public interface SeatService {
	public void saveSeat(Seat seat);
	public Seat findSeatById(Integer seatId);
	public List<Seat> getAllSeats();
	public List<Seat> getAllSeatsByAvailability(Byte availability);
	public Seat findSeatByLocation(String location);
}
