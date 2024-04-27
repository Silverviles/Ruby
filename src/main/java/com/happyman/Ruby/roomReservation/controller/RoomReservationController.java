package com.happyman.Ruby.roomReservation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Room;

@Controller
@RequestMapping("/room")
public class RoomReservationController extends BaseController {
	private static final Logger log = LoggerFactory.getLogger(RoomReservationController.class);

	@PostMapping("/addRoom")
	public String addRoom(Room room) {
		Room reservationRoom = null;
		if (room != null && room.getRoomId() != null) {
			reservationRoom = masterService.getRoomById(room.getRoomId());
		}

		if (reservationRoom == null) {
			reservationRoom = new Room();
		}

		reservationRoom.setRoomName(room != null ? room.getRoomName() : null);
		reservationRoom.setRoomType(room != null ? room.getRoomType() : null);
		reservationRoom.setRoomStatus(room != null ? room.getRoomStatus() : null);
		reservationRoom.setRoomPrice(room != null ? room.getRoomPrice() : null);
		reservationRoom.setRoomCapacity(room != null ? room.getRoomCapacity() : null);

		masterService.addRoom(reservationRoom);
		return "redirect:/admin/adminHome?showDiv=remove_room";
	}

	@PostMapping("/navigateToUpdate")
	public String updateRoom(Integer roomId, RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("editRoom", masterService.getRoomById(roomId));
		return "redirect:/admin/adminHome?showDiv=update_room";
	}

	@PostMapping("/delete")
	public String deleteRoom(Integer roomId) {
		masterService.deleteRoomById(roomId);
		return "redirect:/admin/adminHome?showDiv=remove_room";
	}
}
