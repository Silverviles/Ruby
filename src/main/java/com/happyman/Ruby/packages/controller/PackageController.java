package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.repository.PackageRepository;
import com.happyman.Ruby.masterService.service.PackageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@ComponentScan
@RequestMapping("/packages")

public class PackageController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);

    private PackageService packageService;
    private PackageRepository packageRepository;

    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }

    @GetMapping("/displayPackages")
    public String displayData(Model model) {
        List<Package> packages = packageService.getAllPackages();
        model.addAttribute("packages", packages);
        return "admin/admin_package"; // Return the name of your JSP page
    }

    @PostMapping("/addPackage")
    public String addPackage(@ModelAttribute Package newPackage) {
        packageRepository.save(newPackage);
        return "redirect:/success";
    }
}
