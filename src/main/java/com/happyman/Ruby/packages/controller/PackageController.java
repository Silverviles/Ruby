package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.MasterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/packages")

public class PackageController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);

    public PackageController(MasterService masterService) {
        super(masterService);
    }

    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }
}
