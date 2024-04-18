package com.happyman.Ruby.addons.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.packages.controller.PackageController;
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
@RequestMapping("/addons")
public class AddonController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(PackageController.class);

    @PostMapping("/addAddon")
    public String addAddon(@ModelAttribute Addon addon) {
        if (addon.getAvailability() == null) {
            addon.setAvailability((byte) 0);
        }
        masterService.saveAddon(addon);
        return "redirect:/success";
    }

    @GetMapping("/getAddonNames")
    public String getAddonNames(Model model) {
        List<Addon> addons = masterService.getAllAddons();
        model.addAttribute("addons", addons);
        return "packages/add_package";
    }

}
