package com.happyman.Ruby.masterService.service;

import java.util.List;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Food;

public interface FoodService {
	public void saveFood(Food food);
	public Food findFoodById(Integer foodId);
	public List<Food> getAllFoods();
	public List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category);
	public List<Food> getAllFoodByAvailability(Byte availability);
	public List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability);
}
