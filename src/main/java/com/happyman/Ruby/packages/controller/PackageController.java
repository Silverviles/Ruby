package com.happyman.Ruby.packages.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.packages.dto.PackageDTO;

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

	@PostMapping("/deletePackage")
	public String deletePackage(@ModelAttribute PackageDTO packageDTO) {
		masterService.deletePackageToAddonByPackageId(packageDTO.getId());
		masterService.deletePackage(packageDTO.getId());
		return "redirect:/admin/adminHome?showDiv=remove_package";
	}

	@PostMapping("/navigateToUpdate")
	public String navigateToUpdate(Integer packageId, RedirectAttributes model) {
		model.addFlashAttribute("packageId", packageId);
		model.addFlashAttribute("editPackage", masterService.getPackageDTOList().stream().filter(
			packageDTO -> packageDTO.getId().equals(packageId)).toList().stream().findFirst());
		return "redirect:/admin/adminHome?showDiv=new_package";
	}

	@PostMapping("/updatePackage")
	public String updatePackage(@ModelAttribute PackageDTO packageDTO) {
		masterService.updatePackageDTO(packageDTO);
		return "redirect:/success";
	}

	@GetMapping("/pack")
	public String goPackagesUpdateDelete() {
		return "packages/packages_updateDelete";
	}

}
