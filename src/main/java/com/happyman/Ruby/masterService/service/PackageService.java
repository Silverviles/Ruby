package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.packages.dto.PackageDTO;

@Service
public interface PackageService {
	List<Package> getAllPackages();

	Package getPackageById(Integer packageId);

	Package getPackageByName(String packageName);

	List<Package> getPackageByAvailability(Boolean availability);

	List<Package> getPackageByType(String type);

	List<Package> getPackageByMaxAdults(int maxAdults);

	void addPackage(Package pkg);

	void deletePackage(Integer packageId);

	void updatePackageByPackageDTO(PackageDTO pkg);

}
