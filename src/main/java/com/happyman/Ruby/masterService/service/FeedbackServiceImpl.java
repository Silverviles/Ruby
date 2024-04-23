package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Feedback;
import com.happyman.Ruby.masterService.repository.FeedbackRepository;

@Service
public class FeedbackServiceImpl implements FeedbackService {
	private final FeedbackRepository feedbackRepository;

	@Autowired
	public FeedbackServiceImpl(FeedbackRepository feedbackRepository) {
		this.feedbackRepository = feedbackRepository;
	}

	@Override
	public List<Feedback> getAllFeedbacks() {
		return feedbackRepository.findAll();
	}

	@Override
	public Feedback getFeedbackById(Integer feedbackId) {
		return feedbackRepository.findById(feedbackId).orElse(null);
	}

	@Override
	public Feedback getFeedbackByBookingId(String bookingId) {
		return feedbackRepository.findAll().stream().filter(feedback ->
			feedback.getBookingID().equals(bookingId)).findFirst().orElse(null);
	}

	@Override
	public void addFeedback(Feedback feedback) {
		feedbackRepository.save(feedback);
	}

	@Override
	public void deleteFeedbackById(Integer feedbackId) {
		feedbackRepository.deleteById(feedbackId);
	}

	@Override
	public void deleteFeedbackByBookingId(String bookingId) {
		feedbackRepository.deleteById(getFeedbackByBookingId(bookingId).getId());
	}

	@Override
	public void updateFeedback(String bookingId) {

	}
}
