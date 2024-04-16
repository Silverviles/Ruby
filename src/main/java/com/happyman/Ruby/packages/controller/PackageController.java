package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.packages.dto.PackageDTO;
import com.happyman.Ruby.packages.utils.PackageAndAddonList;
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


    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }

    @GetMapping("/packages")
    public String displayPackageData(Model model, PackageAndAddonList packageAndAddonList) {
        try {
            List<PackageDTO> packages = packageAndAddonList.packageDTOList(masterService);
            model.addAttribute("allPackages", packages);
            return "packages/packages_updateDelete";
        } catch (Exception e) {
            return "error";
        }
    }

    @PostMapping("/addPackage")
    public String addPackage(@ModelAttribute Package newPackage) {
        masterService.addPackage(newPackage);
        return "redirect:/success";
    }
}
