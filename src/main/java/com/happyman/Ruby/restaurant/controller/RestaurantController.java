package com.happyman.Ruby.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/restaurant")
public class RestaurantController {
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

    @GetMapping(value = "/summary")
    public String getSummary(){
        return "/restaurant/summary";
    }
}
