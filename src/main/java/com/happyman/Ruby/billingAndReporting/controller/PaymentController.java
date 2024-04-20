package com.happyman.Ruby.billingAndReporting.controller;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Payment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/payments")


public class PaymentController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PaymentController.class);

    @GetMapping("/paymentHome")
    public String paymentHome() {
        return "paymentHome";
    }

    @GetMapping("/getCustomerDetails")
    public String displayPaymentData(Model model) {
        List<PaymentsDTO> payment = masterService.getPaymentsDTOList();
        model.addAttribute("allPayments", payment);
        return "/payment_updateDelete";
    }

    @PostMapping("/addPaymentStatus")
    public String addPaymentStatus(@ModelAttribute PaymentsDTO paymentsDTO) {
        if (paymentsDTO.getPaymentStatus() == null) {
            paymentsDTO.setPaymentStatus((byte) 0);
        }
        masterService.addPayment(paymentsDTO);
        return "redirect:/success";
    }

    @PostMapping("/deletePayment")
    public String deletePayment(Integer paymentId, Model model) {
        masterService.deletePayment(paymentId);
        model.addAttribute("payments", masterService.getAllPayments());
        return "billingAndReporting/paymentsAdmin";
    }

    @PostMapping("/updatePayment")
    public String updatePayment(Byte paymentStatus, Integer paymentId, Model model) {
        Payment payment = masterService.getPaymentById(paymentId);
        payment.setPaymentStatus(payment.getPaymentStatus() == 0 ? (byte) 1 : (byte) 0);
        masterService.addPayment(payment);
        model.addAttribute("payments", masterService.getAllPayments());
        return "billingAndReporting/paymentsAdmin";
    }

    @PostMapping("/generateBill")
    public String generateBill(@ModelAttribute PaymentsDTO paymentsDTO) {
        Map<String, Map<Integer, Double>> records = paymentsDTO.getRecords();

        double totalBill = 0.0;
        for (Map.Entry<String, Map<Integer, Double>> entry : records.entrySet()) {
            String category = entry.getKey();
            Map<Integer, Double> categoryRecords = entry.getValue();

            for (Map.Entry<Integer, Double> categoryEntry : categoryRecords.entrySet()) {
                Integer id = categoryEntry.getKey();
                Double payment = categoryEntry.getValue();


                totalBill += payment;
            }
        }

        Map<Integer, Double> advance = new HashMap<>();
        advance.put(999, totalBill * 15 / 100);
        records.put("Advance", advance);
        // Save the total bill to the PaymentsDTO
        paymentsDTO.setAmount(Float.parseFloat(String.valueOf(totalBill)));

        paymentsDTO.setRecords(records);

        // Return the view name (replace "billView" with the actual view name)
        return "billView";
    }


    @GetMapping("/billing")
    public String billing(Model model) {
        model.addAttribute("payments", masterService.getAllPayments());
        return "billingAndReporting/paymentsAdmin";
    }
}

