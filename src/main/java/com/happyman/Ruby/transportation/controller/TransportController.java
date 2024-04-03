package com.happyman.Ruby.transportation.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.http.HttpRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.transportation.utils.DriverAuthentication;

@Controller
@RequestMapping("/transport")
public class TransportController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(TransportController.class);

    public TransportController(MasterService masterService) {
        super(masterService);
    }

    @GetMapping("/login")
    public String getLogin() {
        return "transportation/driver_login";
    }

    @PostMapping("/signup")
    public String driverSignUp(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if(DriverAuthentication.verifySignup(request, super.masterService)){
            return "transportation/driver_portal";
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Signup failed. Please try again.");
            return "transportation/driver_login";
        }
    }

    @GetMapping("/portal")
    public String authenticate() {
        return "transportation/driver_portal";
    }
}
