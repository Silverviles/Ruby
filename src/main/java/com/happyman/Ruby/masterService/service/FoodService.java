package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Food;

public interface FoodService {
	void saveFood(Food food);

	Food findFoodById(Integer foodId);

	List<Food> getAllFoods();

	List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category);

	List<Food> getAllFoodByAvailability(Byte availability);

	List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability);
}
