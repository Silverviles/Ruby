package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Package;

import com.happyman.Ruby.masterService.repository.PackageRepository;
import com.happyman.Ruby.packages.dto.PackageDTO;
import com.happyman.Ruby.packages.utils.PackageAndAddonList;
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

    private PackageRepository packageRepository;


    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }

    @GetMapping("/displayPackages")
    public String displayPackageData(Model model) {
        List<PackageDTO> packages = PackageAndAddonList.packageDTOList();
        model.addAttribute("packages", packages);
        return "packages/packages_updateDelete";
    }

    @PostMapping("/addPackage")
    public String addPackage(@ModelAttribute Package newPackage) {
        packageRepository.save(newPackage);
        return "redirect:/success";
    }
}
