package com.happyman.Ruby.common;

import java.security.SecureRandom;
import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Reservation;
import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.masterService.dao.RoomReservation;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.transportation.dto.TripRequestDTO;

@Controller
@RequestMapping("/booking")
public class BookingController extends BaseController {
	@PostMapping("/room")
	@Transactional
	public String processRoom(Integer roomId, String startDate, String endDate, Integer noGuest, Float fullPrice, Model model) {
		RoomReservation roomReservation = new RoomReservation();
		Reservation reservation = new Reservation();
		Room room = masterService.getRoomById(roomId);

		// Set room status to occupied first
		room.setRoomStatus(false);
		masterService.saveRoom(room);

		// Create a room reservation record and save it
		roomReservation.setRoom(room);
		roomReservation.setFullPrice(fullPrice);
		roomReservation.setStartDate(LocalDate.parse(startDate));
		roomReservation.setEndDate(LocalDate.parse(endDate));
		roomReservation.setNoGuest(noGuest);
		masterService.saveRoomReservation(roomReservation);

		reservation.setBookingId(generateRandomString());
		reservation.setRoomReservation(roomReservation);
		reservation.setDiscontinueDate(LocalDate.parse(endDate));
		masterService.saveReservation(reservation);

		model.addAttribute("reservation", reservation);

		return "transportation/transportForm";
	}

	@PostMapping("/transport")
	public String processTransport(TripRequestDTO tripRequestDTO, String action, String bookingId, Model model) {
		if(action.equals("Skip")){
			return "billingAndReporting/billingHome";
		}

		Trip trip = new Trip();
		trip.setTripStatus((byte) 0);
		trip.setTripDestination(tripRequestDTO.getDestination());
		trip.setTotalCost(tripRequestDTO.getTotalCost());
		masterService.saveTrip(trip);

		// Add the trip details to the existing reservation object
		Reservation reservation = masterService.findReservationById(bookingId);
		reservation.setTrip(trip);
		masterService.saveReservation(reservation);

		model.addAttribute("reservation", reservation);
		return "billingAndReporting/billingHome";
	}

	@Transactional
	@PostMapping("/generateBill")
	public String generateBill(PaymentDTO paymentDTO, Model model) {
		Payment payment = new Payment();
		payment.setPaymentStatus((byte) 0); // Payment done is 1
		payment.setBillAmount(paymentDTO.getTotal());
		payment.setCustomerName(paymentDTO.getName());
		payment.setCustomerEmail(paymentDTO.getEmail());

		masterService.addPayment(payment);

		// Update payment done and attach the payment to the reservation
		Reservation reservation = masterService.findReservationById(paymentDTO.getBookingId());
		reservation.setPayment(payment);
		masterService.saveReservation(reservation);
		model.addAttribute("bill", reservation);

		return "billingAndReporting/billingPdf";
	}

	private static String generateRandomString() {
		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		SecureRandom random = new SecureRandom();
		StringBuilder sb = new StringBuilder(10);

		for (int i = 0; i < 10; i++) {
			int randomIndex = random.nextInt(characters.length());
			sb.append(characters.charAt(randomIndex));
		}
		return sb.toString();
	}
}
