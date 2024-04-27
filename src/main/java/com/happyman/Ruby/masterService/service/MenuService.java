package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Menu;

import java.util.List;

public interface MenuService {
    public void saveMenu(Menu menu);
    public Menu getMenuById(Integer menuId);
    public List<Menu> getAllMenus();
    public List<Menu> getAllMenusByMealType(String meanType);
    public List<Menu> getAllMenusByDishType(String dishType);
    public List<Menu> getAllMenusByAvailability(Byte availability);

    void deleteMenuById(Integer menuId);
}
