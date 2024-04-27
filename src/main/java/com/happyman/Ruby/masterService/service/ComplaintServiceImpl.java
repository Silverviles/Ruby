package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Complaint;
import com.happyman.Ruby.masterService.repository.ComplaintRepository;

@Service
public class ComplaintServiceImpl implements ComplaintService {
	private final ComplaintRepository complaintRepository;

	@Autowired
	public ComplaintServiceImpl(ComplaintRepository complaintRepository) {
		this.complaintRepository = complaintRepository;
	}

	@Override
	public Complaint saveComplaint(Complaint complaint) {
		return complaintRepository.save(complaint);
	}

	@Override
	public Complaint findComplaintById(Integer id) {
		return complaintRepository.findById(id).orElse(null);
	}

	@Override
	public void deleteComplaint(Integer id) {
		complaintRepository.deleteById(id);
	}

	@Override
	public List<Complaint> findAllComplaints() {
		return complaintRepository.findAll();
	}

	@Override
	public Complaint findComplaintByBookingId(String bookingId) {
		return findAllComplaints().stream().filter(complaint -> complaint.getReservation().getBookingId().equals(bookingId)).findFirst().orElse(null);
	}
}
