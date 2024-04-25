package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Refund;

public interface RefundService {
	Refund save(Refund refund);
	List<Refund> findAll();
	Refund findById(Integer id);
}
