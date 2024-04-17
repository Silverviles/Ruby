package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PackageToAddonService {
    List<PackageToAddon> getAddonsByPackageId(Integer packageId);

    void addPackageToAddon(PackageToAddon packageToAddon);

}
