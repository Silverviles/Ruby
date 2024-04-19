package com.happyman.Ruby.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.MasterServiceImpl;

@Controller
@RequestMapping(value = "/restaurant")
public class RestaurantController extends BaseController {

    @GetMapping(value = "/restaurantHome")
    public String getStartBooking(){
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
    public String getMeal(Model model){
        model.addAttribute("foodList", masterService.getAllFoods());
        return "/restaurant/meal";
    }

    @GetMapping(value = "/summary")
    public String getSummary(){
        return "/restaurant/summary";
    }
}
