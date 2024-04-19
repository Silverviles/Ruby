package com.happyman.Ruby.customerSupport.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Feedback;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/customerSupport")
public class CustomerSupportController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(CustomerSupportController.class);

    @GetMapping("/feedback")
    public String authenticate() {
        return "customerSupportSystem/feedback";
    }

    @PostMapping("/addFeedback")
    public String addFeedback(@ModelAttribute Feedback feedback){
        masterService.addFeedback(feedback);
        return "redirect:/success";
    }

    @PostMapping("/deleteFeedback")
    public String deleteFeedback(Integer feedbackId, Model model){
        masterService.deleteFeedbackById(feedbackId);
        model.addAttribute("feedbacks", masterService.getAllFeedbacks());
        return "common/admin_sidebar";
    }
}