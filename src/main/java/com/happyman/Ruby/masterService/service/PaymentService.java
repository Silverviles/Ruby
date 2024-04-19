package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.masterService.dao.Payment;

import java.util.List;

public interface PaymentService {


    List<Payment> getAllPayments();

    Payment getPaymentById(Integer paymentId);

    void UpdatePayment(Payment pay);
   Payment getPaymentByAmount(Float Amount);

    void addPayment(Payment payment);

    void deletePayment(Integer paymentId);

    void updatePaymentByPaymentDTO(PaymentsDTO payment);
}

