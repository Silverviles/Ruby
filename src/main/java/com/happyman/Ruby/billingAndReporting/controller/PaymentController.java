package com.happyman.Ruby.billingAndReporting.controller;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.dao.Reservation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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
        return "billingAndReporting/refundRequest";
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

    @PostMapping("/refundRequest")
    public String Home(String bookingId, Model model) {
        Reservation reservation = masterService.findReservationById(bookingId);
        Refund refund = new Refund();
        refund.setRefundStatus((byte) 0);
        refund.setCustomerName(reservation.getPayment().getCustomerName());
        refund.setCustomerEmail(reservation.getPayment().getCustomerEmail());
        refund.setRefundAmount(reservation.getPayment().getBillAmount());
        refund = masterService.saveRefund(refund);
        reservation.setRefund(refund);
        masterService.saveReservation(reservation);
        model.addAttribute("reservation", reservation);
        return "/home/Home";
    }

    @GetMapping("/refundButton")
    public String refundButton(Model model) {
        return "admin/customerSupportandRefund";
    }

    @GetMapping("/refundPage")
    public String refundPage(Model model) {
        return "billingAndReporting/refundRequest";
    }

    @GetMapping("/refundPayment")
    public String refundPayment(Model model) {
        return "billingAndReporting/adminPayments";
    }

}