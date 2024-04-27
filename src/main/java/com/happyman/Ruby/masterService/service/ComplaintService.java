package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Complaint;

public interface ComplaintService {
	public Complaint saveComplaint(Complaint complaint);
	public Complaint findComplaintById(Integer id);
	public void deleteComplaint(Integer id);
	public List<Complaint> findAllComplaints();
	public Complaint findComplaintByBookingId(String bookingId);
}
