package com.happyman.Ruby.addons.controller;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Addon;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/addons")
public class AddonController extends BaseController {

    @PostMapping("/addAddon")
    public String addAddon(@ModelAttribute Addon addon) {
        if (addon.getAvailability() == null) {
            addon.setAvailability((byte) 0);
        }

        masterService.saveAddon(addon);
        return "redirect:/success";
    }

}
