package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Feedback;
import org.springframework.stereotype.Service;

import java.util.List;

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
