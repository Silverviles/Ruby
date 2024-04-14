package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.PackageToAddonRepository;

import java.util.List;

public class PackageToAddonServiceImpl implements PackageToAddonService {
    private PackageToAddonRepository packageToAddonRepository;

    @Override
    public List<PackageToAddon> getAddonsForPackage(Integer packageId) {
        return packageToAddonRepository.findById_PackageId(packageId);
    }
}
