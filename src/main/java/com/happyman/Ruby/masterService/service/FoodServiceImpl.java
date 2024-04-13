package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.repository.FoodRepository;

@Service
public class FoodServiceImpl implements FoodService {
	private final FoodRepository foodRepository;

	public FoodServiceImpl(FoodRepository foodRepository) {
		this.foodRepository = foodRepository;
	}

	@Override
	public void saveFood(Food food) {
		foodRepository.save(food);
	}

	@Override
	public Food findFoodById(Integer foodId) {
		return foodRepository.findById(foodId).orElse(null);
	}

	@Override
	public List<Food> getAllFoods() {
		return foodRepository.findAll();
	}

	@Override
	public List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category) {
		return getAllFoods().stream().filter(food -> food.getFoodCategory().equals(category)).toList();
	}

	@Override
	public List<Food> getAllFoodByAvailability(Byte availability) {
		return getAllFoods().stream().filter(food -> food.getFoodAvailability().equals(availability)).toList();
	}

	@Override
	public List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability) {
		return getAllFoods().stream().filter(
			food -> food.getFoodCategory().equals(category) && food.getFoodAvailability().equals(
				availability)).toList();
	}
}
