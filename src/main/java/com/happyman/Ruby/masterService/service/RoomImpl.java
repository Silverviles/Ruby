package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.masterService.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoomImpl implements RoomService {

    @Autowired
    private RoomRepository roomRepository;

    @Override
    public void saveRoom(Room room) {
        roomRepository.save(room);
    }

    @Override
    public Room getRoomById(Integer roomId) {
        return roomRepository.findById(roomId).orElse(null);
    }

    @Override
    public List<Room> getAllRoom() {
        return roomRepository.findAll();
    }

    @Override
    public List<Room> getAllRoomByRoomType(String roomType) {
        List<Room> rooms = roomRepository.findAll();
        List<Room> rooms1 = new ArrayList<>();
        for(Room room: rooms){
            if(room.getRoomType().equals(roomType)){
                rooms1.add(room);
            }
        }
        return rooms1;
    }

    @Override
    public List<Room> getAllRoomByStatus(Boolean status) {
        List<Room> rooms = roomRepository.findAll();
        List<Room> rooms1 = new ArrayList<>();
        for(Room room: rooms){
            if(room.getRoomStatus().equals(status)){
                rooms1.add(room);
            }
        }
        return rooms1;
    }


    @Override
    public List<Room> getAllRoomByGuests(Integer guests) {
        List<Room> rooms = roomRepository.findAll();
        List<Room> rooms1 = new ArrayList<>();
        for(Room room: rooms){
            if(room.getRoomCapacity().equals(guests)){
                rooms1.add(room);
            }
        }
        return rooms1;
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
