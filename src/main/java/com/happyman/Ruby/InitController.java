package com.happyman.Ruby;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class InitController {
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getLogin(){
        return "/home/home";
    }
}
