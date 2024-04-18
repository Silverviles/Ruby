package com.happyman.Ruby.packages.controller;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.packages.dto.PackageDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/packages")

public class PackageController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);


    @GetMapping("/packHome")
    public String goPackages() {
        return "packages/package";
    }

    @GetMapping("/getPackages")
    public String displayPackageData(Model model) {
            List<PackageDTO> packages = masterService.getPackageDTOList();
            model.addAttribute("allPackages", packages);
            return "packages/packages_updateDelete";
    }

    @PostMapping("/addPackage")
    public String addPackage(@ModelAttribute PackageDTO packageDTO) {
        if (packageDTO.getPackageAvailability() == null) {
            packageDTO.setPackageAvailability(false);
        }
        masterService.addPackageWithAddon(packageDTO);
        return "redirect:/success";
    }
}
