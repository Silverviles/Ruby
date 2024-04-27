package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Room;

public interface RoomService {


	void saveRoom(Room room);

	Room getRoomById(Integer roomId);

	List<Room> getAllRooms();

	List<Room> getAllRoomsByRoomType(String roomType);

	List<Room> getAllRoomsByStatus(Boolean status);


	List<Room> getAllRoomsByGuests(Integer guests);


	void addRoom(Room room);

	void updateRoom(Room room);

	void deleteRoom(Room room);

	void deleteRoomById(Integer roomId);
}
