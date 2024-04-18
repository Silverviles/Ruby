package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.packages.dto.PackageDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PackageToAddonService {
    List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId);

    void addPackageToAddon(PackageToAddon packageToAddon);

    void deletePackageToAddonByPackageId(Integer packageId);

    void deletePackageToAddon(PackageToAddon packageToAddon);
}
