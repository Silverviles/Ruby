package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.masterService.dao.RestaurantTable;
import com.happyman.Ruby.masterService.repository.RestaurantTableRepository;

public interface RestaurantTableService {
	RestaurantTable save(RestaurantTable restaurantTable);
	List<RestaurantTable> findAll();
	RestaurantTable findById(Integer id);
	void deleteById(Integer id);
}
