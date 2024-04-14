package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.Package;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PackageService {
    List<Package> getAllPackages();

    Package getPackageById(Integer packageId);

    Package getPackageByName(String packageName);

    List<Package> getPackageByAvailability(Byte availability);

    List<Package> getPackageByType(DomainConstants.PackageType type);

    List<Package> getPackageByMaxAdults(int maxAdults);

    void addPackage(Package pkg);

    void deletePackage(Integer packageId);

}
