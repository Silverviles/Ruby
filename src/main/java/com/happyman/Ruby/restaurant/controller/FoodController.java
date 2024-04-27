package com.happyman.Ruby.restaurant.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Menu;

@Controller
@RequestMapping("/food")
public class FoodController extends BaseController {
	private static final Logger log = LoggerFactory.getLogger(FoodController.class);

	@PostMapping("/save")
	public String saveFood(Menu menu) {
		Menu food = null;

		if(menu != null && menu.getId() != null) {
			food = masterService.getMenuById(menu.getId());
		}

		if (food == null) {
			food = new Menu();
		}

		food.setMenuName(menu != null ? menu.getMenuName() : null);
		food.setAvailability(menu != null ? menu.getAvailability() : null);
		food.setPrice(menu != null ? menu.getPrice() : null);
		food.setMealType(menu != null ? menu.getMealType() : null);
		food.setDishType(menu != null ? menu.getDishType() : null);

		masterService.saveMenu(food);
		return "redirect:/admin/adminHome?showDiv=all_food";
	}

	@PostMapping("/delete")
	public String DeleteFood(Integer menuId) {
		masterService.deleteMenuById(menuId);
		return "redirect:/admin/adminHome?showDiv=all_food";
	}

	@PostMapping("/navigateToUpdate")
	public String navigateToUpdate(Integer menuId, RedirectAttributes attributes) {
		attributes.addFlashAttribute("editMenu", masterService.getMenuById(menuId));
		return "redirect:/admin/adminHome?showDiv=add_food";
	}
}
