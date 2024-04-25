package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.repository.RefundRepository;

@Service
public class RefundServiceImpl implements RefundService{
	private final RefundRepository refundRepository;

	@Autowired
	public RefundServiceImpl(RefundRepository refundRepository) {
		this.refundRepository = refundRepository;
	}

	@Override
	public Refund save(Refund refund) {
		return refundRepository.save(refund);
	}

	@Override
	public List<Refund> findAll() {
		return refundRepository.findAll();
	}

	@Override
	public Refund findById(Integer id) {
		return refundRepository.findById(id).orElse(null);
	}
}
