package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Reservation;
import com.happyman.Ruby.masterService.repository.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService {
	private final ReservationRepository reservationRepository;

	@Autowired
	public ReservationServiceImpl(ReservationRepository reservationRepository) {
		this.reservationRepository = reservationRepository;
	}

	@Override
	public Reservation save(Reservation reservation) {
		return reservationRepository.save(reservation);
	}

	@Override
	public List<Reservation> findAll() {
		return reservationRepository.findAll();
	}

	@Override
	public List<Reservation> findAllCompleted() {
		return findAll().stream().filter(reservation -> reservation.getPayment() != null).toList();
	}

	@Override
	public Reservation findById(String id) {
		return reservationRepository.findById(id).orElse(null);
	}

	@Override
	public void deleteById(String id) {
		reservationRepository.deleteById(id);
	}
}
