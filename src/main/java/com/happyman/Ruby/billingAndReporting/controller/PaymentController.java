package com.happyman.Ruby.billingAndReporting.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.dao.Reservation;

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
		List<PaymentDTO> payment = masterService.getPaymentsDTOList();
		model.addAttribute("allPayments", payment);
		return "/payment_updateDelete";
	}

	@PostMapping("/addPaymentStatus")
	public String addPaymentStatus(@ModelAttribute PaymentDTO paymentDTO) {
		// TODO: Fix payment update
		masterService.addPayment(paymentDTO);
		return "redirect:/success";
	}

	/*@PostMapping("/deletePayment")
	public String deletePayment(Integer paymentId, Model model) {
		masterService.deletePayment(paymentId);
		model.addAttribute("payments", masterService.getAllPayments());
		return "billingAndReporting/paymentsAdmin";
	}*/

	@PostMapping("/updatePayment")
	public String updatePayment(Integer paymentId, Model model) {
		Payment payment = masterService.getPaymentById(paymentId);
		payment.setPaymentStatus((byte) 1);
		masterService.addPayment(payment);
		return "redirect:/admin/adminHome?showDiv=payments";
	}

	@PostMapping("/refund")
	public String getRefund(String bookingId) {
		Refund refund = masterService.findReservationById(bookingId).getRefund();
		refund.setRefundStatus((byte) 1);
		masterService.saveRefund(refund);
		masterService.deleteReservationById(bookingId);
		return "redirect:/admin/adminHome?showDiv=refunds";
	}

	/*@PostMapping("/generateBill")
	public String generateBill(@ModelAttribute PaymentDTO paymentDTO) {
		Map<String, Map<Integer, Double>> records = paymentDTO.getRecords();

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
		paymentDTO.setAmount(Float.parseFloat(String.valueOf(totalBill)));

		paymentDTO.setRecords(records);

		// Return the view name (replace "billView" with the actual view name)
		return "billView";
	}*/


	@GetMapping("/billing")
	public String billing(Model model) {
		model.addAttribute("payments", masterService.getAllPayments());
		return "billingAndReporting/paymentsAdmin";
	}

	@GetMapping("/billingHome")
	public String billingHome(Model model) {
		return "billingAndReporting/billingHome";
	}
}
