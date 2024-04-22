package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;

@Service
public interface PackageToAddonService {
	List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId);

	void addPackageToAddon(PackageToAddon packageToAddon);

	void deletePackageToAddonByPackageId(Integer packageId);

	void deletePackageToAddon(PackageToAddon packageToAddon);
}
