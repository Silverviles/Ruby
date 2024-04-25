package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.repository.PaymentRepository;

@Service
public class PaymentServiceImpl implements PaymentService {


	private final PaymentRepository paymentRepository;

	public PaymentServiceImpl(PaymentRepository paymentRepository) {
		this.paymentRepository = paymentRepository;
	}

	@Override
	public List<Payment> getAllPayments() {
		return paymentRepository.findAll();
	}

	@Override
	public Payment getPaymentById(Integer paymentId) {
		return paymentRepository.findById(paymentId)
			.orElseThrow(() -> new RuntimeException("payment not found with id: " + paymentId));
	}

	@Override
	public void UpdatePayment(Payment pay) {

	}

	@Override
	public Payment getPaymentByAmount(Float Amount) {
		List<Payment> PaymentId = paymentRepository.findAll();
		for (Payment pay : PaymentId) {
			if (pay.getBillAmount().equals(Amount)) {
				PaymentId.add(pay);
			}
		}
		return null;
	}


	@Override
	public List<Payment> getPaymentStatus(Byte Status) {
		return getAllPayments().stream().filter(payment -> payment.getPaymentStatus().equals(Status)).toList();
	}


	@Override
	public void addPayment(Payment payment) {
		paymentRepository.save(payment);
	}

	@Override
	public void deletePayment(Integer paymentId) {
		paymentRepository.deleteById(paymentId);
	}

	@Override
	public void deletePaymentBypaymentId(Integer bId) {
		paymentRepository.deleteById(bId);
	}


	@Override
	public void updatePaymentByPaymentDTO(PaymentDTO payment) {
		Payment py = this.getPaymentById(payment.getPaymentId());
		py.setBillAmount(payment.getAmount());
		py.setCustomerName(payment.getCustomerName());
		py.setCustomerEmail(payment.getCustomerEmail());
		py.setPaymentStatus(payment.getPaymentStatus());

		paymentRepository.save(py);
	}
}



