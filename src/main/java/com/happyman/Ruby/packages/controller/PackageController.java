package com.happyman.Ruby.packages.controller;


import java.net.http.HttpRequest;
import java.util.List;

import com.happyman.Ruby.masterService.dao.Package;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		return "redirect:/admin/adminHome?showDiv=remove_package";
	}

	@PostMapping("/deletePackage")
	public String deletePackage(Integer packageId) {
		// TODO: Fix delete
		masterService.deletePackageToAddonByPackageId(packageId);
		masterService.deletePackage(packageId);
		return "redirect:/admin/adminHome?showDiv=remove_package";
	}

	@PostMapping("/navigateToUpdate")
	public String navigateToUpdate(Integer packageId, RedirectAttributes model) {
		model.addFlashAttribute("packageId", packageId);
		model.addFlashAttribute("editPackage", masterService.getPackageDTOList().stream().filter(
			packageDTO -> packageDTO.getId().equals(packageId)).toList().stream().findFirst().orElse(null));
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

	@GetMapping("/getAllPackage")
	public String displayAllPackage(Model model) {
		List<Package> packages = masterService.getAllPackages();
		model.addAttribute("Package", packages);
		return "packages/package";
	}

}
