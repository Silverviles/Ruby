package com.happyman.Ruby.restaurant.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.dao.Menu;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/restaurant")
public class RestaurantController extends BaseController {

    @GetMapping(value = "/restaurantHome")
    public String getStartBooking2(){
        return "/restaurant/startBooking";
    }

    @GetMapping(value = "/dateTime")
    public String getDateTime(){
        return "/restaurant/dateTime";
    }

    @GetMapping(value = "/seatMap")
    public String getSeatMap(){
        return "/restaurant/seatMap";
    }

    @GetMapping(value = "/meal")
    public String getMeal(){
        return "/restaurant/meal";
    }

    @PostMapping("/getMeals")
    public ResponseEntity<List<Food>> getMeals(){
        return new ResponseEntity<>(masterService.getAllFoods(), HttpStatus.OK);
    }

    @GetMapping(value = "/summary")
    public String getSummary(){
        return "/restaurant/summary";
    }

    @PostMapping("/adminMenuPlan")
    public String getMenuPlan(Menu menu, Model model) {
        masterService.saveMenu(menu);
        model.addAttribute("foods", masterService.getAllMenus());
        return "restaurant/menuView";
    }

    @GetMapping("/adminMenuPlanShow")
    public String getMenu(Model model) {
        model.addAttribute("foods", masterService.getAllMenus());
        return "restaurant/menuView";
    }

    @PostMapping("/deleteMenu")
    public String deleteMenu(Integer menuId, Model model) {
        masterService.deleteMenuById(menuId);
        model.addAttribute("foods", masterService.getAllMenus());
        return "restaurant/menuView";
    }

    @PostMapping("/editMenu")
    public String editMenu(Integer menuId, Model model) {
        model.addAttribute("editMenu", masterService.getMenuById(menuId));
        return "restaurant/addMenuForm";
    }

    @GetMapping(value = "/addMenu")
    public String getStartBooking(){
        return "/restaurant/addMenuForm";
    }

    @GetMapping("/newStartBooking")
    public String getNewStartBooking() {
        return "/restaurant/newStartBooking";
    }

    @GetMapping(value = "/newdateTime")
    public String getNewDateTime(){
        return "/restaurant/newDateTime";
    }

    @GetMapping(value = "/newseatmap")
    public String getNewSeatMap(){
        return "/restaurant/tableNew";
    }

    @GetMapping(value = "/newmealpage")
    public String getNewMeal(){
        return "/restaurant/newMeal";
    }

    @GetMapping(value = "/newsummary")
    public String getNewSummaryl(){
        return "/restaurant/newSummary";
    }

}

