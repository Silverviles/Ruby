package com.happyman.Ruby.transportation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/transport")
public class TransportController {

    private static final Logger log = LoggerFactory.getLogger(TransportController.class);

    @GetMapping("/login")
    public String getLogin() {
        return "transportation/driver_login";
    }

    @GetMapping("/portal")
    public String authenticate() {
        return "transportation/driver_portal";
    }
}
