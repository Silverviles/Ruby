package com.happyman.Ruby.addons.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.packages.controller.PackageController;

@Controller
@RequestMapping("/addons")
public class AddonController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(PackageController.class);

	@PostMapping("/addAddon")
	public String addAddon(@ModelAttribute Addon addon) {
		if (addon.getAddonAvailability() == null) {
			addon.setAddonAvailability((byte) 0);
		}
		masterService.saveAddon(addon);
		return "redirect:/success";
	}


	@GetMapping("/getAddonNamesToUpdatePackage")
	public String getAddonNamesToUpdatePackage(Model model) {
		List<Addon> addons = masterService.getAllAddons();
		model.addAttribute("addons", addons);
		return "packages/packages_updateDelete";
	}
}
