package com.happyman.Ruby.admin.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.packages.controller.PackageController;
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
@RequestMapping("/admin")

public class AdminController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);


    @GetMapping("/temp1")
    public String goTemp1(Model model) {
        List<PackageDTO> packages = masterService.getPackageDTOList();
        model.addAttribute("allPackages", packages);

        List<Addon> addons = masterService.getAllAddons();
        model.addAttribute("addons", addons);
        return "common/admin_sidebar";
    }


}
