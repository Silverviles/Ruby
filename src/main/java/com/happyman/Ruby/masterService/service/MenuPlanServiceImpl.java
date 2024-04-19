package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.repository.FoodRepository;
import com.happyman.Ruby.masterService.repository.MenuPlanRepository;

import java.util.List;

public class MenuPlanServiceImpl implements MenuPlanService{
    private final MenuPlanRepository menuPlanRepository;

    public MenuPlanServiceImpl(MenuPlanRepository menuPlanRepository) {
        this.menuPlanRepository = menuPlanRepository;
    }


}
