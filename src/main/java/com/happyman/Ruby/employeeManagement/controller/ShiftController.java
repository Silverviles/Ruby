package com.happyman.Ruby.employeeManagement.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.controller.ShiftController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employeeManagement")

public class ShiftController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(ShiftController.class);


    @GetMapping("/shiftHome")
    public String goPackages() {
        return "employeeManagement/shiftManagement";
    }
}