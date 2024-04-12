package com.happyman.Ruby.employeeManagement.controller;

import com.happyman.Ruby.common.BaseController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.happyman.Ruby.employeeManagement.controller.registerController;

@Controller
@RequestMapping("/employeeManagement")

public class registerController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(ShiftController.class);




    @GetMapping("/registerHome")
    public String goPackages() {
        return "employeeManagement/Registration";
    }


}