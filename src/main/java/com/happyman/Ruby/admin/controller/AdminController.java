package com.happyman.Ruby.admin.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.packages.controller.PackageController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")

public class AdminController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);


    @GetMapping("/temp1")
    public String goTemp1() {
        return "admin/admin_temp1";
    }
}
