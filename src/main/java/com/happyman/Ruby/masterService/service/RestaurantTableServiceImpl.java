package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.RestaurantTable;
import com.happyman.Ruby.masterService.repository.RestaurantTableRepository;

@Service
public class RestaurantTableServiceImpl implements RestaurantTableService{
	private final RestaurantTableRepository restaurantTableRepository;

	@Autowired
	public RestaurantTableServiceImpl(RestaurantTableRepository restaurantTableRepository) {
		this.restaurantTableRepository = restaurantTableRepository;
	}

	@Override
	public RestaurantTable save(RestaurantTable restaurantTable) {
		return restaurantTableRepository.save(restaurantTable);
	}

	@Override
	public List<RestaurantTable> findAll() {
		return restaurantTableRepository.findAll();
	}

	@Override
	public RestaurantTable findById(Integer id) {
		return restaurantTableRepository.findById(id).orElse(null);
	}

	@Override
	public void deleteById(Integer id) {
		restaurantTableRepository.deleteById(id);
	}
}
