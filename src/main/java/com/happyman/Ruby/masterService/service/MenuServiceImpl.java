package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Menu;
import com.happyman.Ruby.masterService.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {
    private final MenuRepository menuRepository;

    @Autowired
    public MenuServiceImpl(MenuRepository menuRepository) {
        this.menuRepository = menuRepository;
    }

    @Override
    public void saveMenu(Menu menu) {
        menuRepository.save(menu);
    }

    @Override
    public Menu getMenuById(Integer menuId) {
        return menuRepository.findById(menuId).orElse(null);
    }

    @Override
    public List<Menu> getAllMenus() {
        return menuRepository.findAll();
    }

    @Override
    public List<Menu> getAllMenusByMealType(String mealType) {
        return menuRepository.findAll().stream().filter(menu -> menu.getMealType().equals(mealType)).toList();
    }

    @Override
    public List<Menu> getAllMenusByDishType(String dishType) {
        return menuRepository.findAll().stream().filter(menu -> menu.getDishType().equals(dishType)).toList();
    }

    @Override
    public List<Menu> getAllMenusByAvailability(Byte availability) {
        return menuRepository.findAll().stream().filter(menu -> menu.getAvailability().equals(availability)).toList();
    }

    @Override
    public void deleteMenuById(Integer menuId) {
        menuRepository.deleteById(menuId);
    }

}
