package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Room;

import java.util.List;

public interface RoomService {


    public void saveRoom(Room room);

    public Room getRoomById(Integer roomId);

    public List<Room> getAllRooms();

    public List<Room> getAllRoomsByRoomType(String roomType);

    public List<Room> getAllRoomsByStatus(Boolean status);


    public List<Room> getAllRoomsByGuests(Integer guests);


    void addRoom(Room room);

    void updateRoom(Room room);

    void deleteRoom(Room room);
}
