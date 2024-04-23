package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Feedback;

@Service
public interface FeedbackService {

	List<Feedback> getAllFeedbacks();

	Feedback getFeedbackById(Integer feedbackId);

	Feedback getFeedbackByBookingId(String bookingId);

	void addFeedback(Feedback feedback);

	void deleteFeedbackById(Integer feedbackId);

	void deleteFeedbackByBookingId(String bookingId);

	void updateFeedback(String bookingId);
}
