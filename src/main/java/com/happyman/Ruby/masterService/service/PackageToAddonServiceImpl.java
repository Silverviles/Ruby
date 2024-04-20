package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.PackageToAddonRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PackageToAddonServiceImpl implements PackageToAddonService {

    private final PackageToAddonRepository packageToAddonRepository;

    public PackageToAddonServiceImpl(PackageToAddonRepository packageToAddonRepository) {
        this.packageToAddonRepository = packageToAddonRepository;
    }

    @Override
    public List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId) {
        return packageToAddonRepository.findAllById_PackageId(packageId);
    }

    @Override
    public void addPackageToAddon(PackageToAddon packageToAddon) {
        packageToAddonRepository.save(packageToAddon);
    }

    @Override
    public void deletePackageToAddonByPackageId(Integer packageId) {
        List<PackageToAddon> packageToAddons = packageToAddonRepository.findAllById_PackageId(packageId);
        packageToAddonRepository.deleteAll(packageToAddons);
    }

    @Override
    public void deletePackageToAddon(PackageToAddon packageToAddon) {
        packageToAddonRepository.delete(packageToAddon);
    }

}

