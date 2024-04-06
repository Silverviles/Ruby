package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.MasterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/package")

public class PackageController extends BaseController {

    public PackageController(MasterService masterService) {
        super(masterService);
    }
}
