package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Room;

import java.util.List;

public interface RoomService {


    public void saveRoom(Room room);

    public Room getRoomById(Integer roomId);

    public List<Room> getAllRoom();

    public List<Room> getAllRoomByRoomType(String roomType);

    public List<Room> getAllRoomByStatus(Boolean status);


    public List<Room> getAllRoomByGuests(Integer guests);


    void addRoom(Room room);

    void updateRoom(Room room);

    void deleteRoom(Room room);
}
