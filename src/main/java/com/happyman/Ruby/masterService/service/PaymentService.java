package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.masterService.dao.Payment;

public interface PaymentService {


	List<Payment> getAllPayments();

	List<Payment> getPaymentStatus(Byte Status);

	Payment getPaymentById(Integer paymentId);

	void UpdatePayment(Payment pay);

	Payment getPaymentByAmount(Float Amount);

	void addPayment(Payment payment);

	void deletePayment(Integer paymentId);

	void deletePaymentBypaymentId(Integer bId);

	void updatePaymentByPaymentDTO(PaymentsDTO payment);
}

