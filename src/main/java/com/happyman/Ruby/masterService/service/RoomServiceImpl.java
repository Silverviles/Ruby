package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.masterService.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {

    private final RoomRepository roomRepository;

    @Autowired
    RoomServiceImpl(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    @Override
    public void saveRoom(Room room) {
        roomRepository.save(room);
    }

    @Override
    public Room getRoomById(Integer roomId) {
        return roomRepository.findById(roomId).orElse(null);
    }

    @Override
    public List<Room> getAllRooms() {
        return roomRepository.findAll();
    }

    @Override
    public List<Room> getAllRoomsByRoomType(String roomType) {
        return getAllRooms().stream().filter(room -> room.getRoomType().equals(roomType)).toList();
    }

    @Override
    public List<Room> getAllRoomsByStatus(Boolean status) {
        return getAllRooms().stream().filter(room -> room.getRoomStatus().equals(status)).toList();
    }


    @Override
    public List<Room> getAllRoomsByGuests(Integer guests) {
        return getAllRooms().stream().filter(room -> room.getRoomCapacity().equals(guests)).toList();
    }

    @Override
    public void addRoom(Room room) {
        roomRepository.save(room);
    }

    @Override
    public void updateRoom(Room room) {
        Room room1 = this.getRoomById(room.getId());
        room1.setRoomName(room.getRoomName());
        room1.setRoomType(room.getRoomType());
        room1.setRoomPrice(room.getRoomPrice());
        room1.setRoomStatus(room.getRoomStatus());
        room1.setRoomCapacity(room.getRoomCapacity());

        roomRepository.save(room1);
    }

    @Override
    public void deleteRoom(Room room) {
        roomRepository.delete(room);
    }
}
