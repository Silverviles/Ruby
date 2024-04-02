package com.happyman.Ruby.transportation.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.net.http.HttpRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/transport")
public class TransportController {

    private static final Logger log = LoggerFactory.getLogger(TransportController.class);

    @GetMapping("/login")
    public String getLogin() {
        return "transportation/driver_login";
    }

    @PostMapping("/signup")
    public String driverSignUp(HttpServletRequest request, HttpServletResponse response){

        return "transportation/driver_portal";
    }

    @GetMapping("/portal")
    public String authenticate() {
        return "transportation/driver_portal";
    }
}
