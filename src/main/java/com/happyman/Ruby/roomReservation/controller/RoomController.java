package com.happyman.Ruby.roomReservation.controller;

import com.happyman.Ruby.masterService.dao.Room;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.happyman.Ruby.common.BaseController;

import java.util.List;


@Controller
@RequestMapping("/room")
public class RoomController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(RoomController.class);

    @PostMapping("/addroom")
    public String addRoom(@ModelAttribute Room room){
        if(room.getRoomStatus() == null){
            room.setRoomStatus(false);
        }

        masterService.addRoom(room);
        return "redirect:/success";
    }

    @GetMapping("/displayRoom")
    public String displayRooms(Model model){
        List<Room> rooms = masterService.getAllRoom();
        model.addAttribute("room", rooms);
        return "room/allRoom";
    }

    @PostMapping("/updateRoom")
    public String updateRoom(@ModelAttribute Room room){
        masterService.updateRoom(room);
        return "redirect:/success";
    }


    @PostMapping("/deleteRoom")
    public String deleteRoom(@ModelAttribute Room room){
        masterService.deleteRoom(room);
        return "redirect:/success";
    }
}
