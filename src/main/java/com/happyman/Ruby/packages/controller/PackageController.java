package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.PackageRepository;
import com.happyman.Ruby.masterService.service.PackageService;
import com.happyman.Ruby.masterService.service.PackageToAddonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@ComponentScan
@RequestMapping("/packages")

public class PackageController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);

    private PackageService packageService;
    private PackageRepository packageRepository;
    private PackageToAddonService packageToAddonService;

    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }

    @GetMapping("/displayPackages")
    public String displayData(Model model) {
        List<Package> packages = packageService.getAllPackages();
        model.addAttribute("packages", packages);
        return "packages/packages_updateDelete";
    }

//    @GetMapping("/{id}")
//    public String getPackageDetails(@PathVariable("id") Integer packageId, Model model) {
//        Package packages = packageService.getPackageById(packageId);
//        List<PackageToAddon> addons = packageToAddonService.getAddonsForPackage(packageId);
//        model.addAttribute("packages", packages);
//        model.addAttribute("addons", addons);
//        return "packages/packages_updateDelete";
//    }


    @PostMapping("/addPackage")
    public String addPackage(@ModelAttribute Package newPackage) {
        packageRepository.save(newPackage);
        return "redirect:/success";
    }
}
