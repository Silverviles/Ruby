package com.happyman.Ruby.restaurant.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.MasterServiceImpl;
import com.happyman.Ruby.masterService.dao.Food;

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
}
