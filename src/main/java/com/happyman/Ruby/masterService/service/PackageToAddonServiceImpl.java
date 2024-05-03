package com.happyman.Ruby.masterService.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.PackageToAddonRepository;

@Service
public class PackageToAddonServiceImpl implements PackageToAddonService {

    private final PackageToAddonRepository packageToAddonRepository;

    public PackageToAddonServiceImpl(PackageToAddonRepository packageToAddonRepository) {
        this.packageToAddonRepository = packageToAddonRepository;
    }

    @Override
    public List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId) {
        List<PackageToAddon> packageToAddon = packageToAddonRepository.findAll();
        List<PackageToAddon> packageToAddons = new ArrayList<PackageToAddon>();
        for (PackageToAddon packageToAddon1 : packageToAddon) {
            if (packageId.equals(packageToAddon1.getId().getPackageId())) {
                packageToAddons.add(packageToAddon1);
            }
        }
        return packageToAddons;
    }

    @Override
    public void addPackageToAddon(PackageToAddon packageToAddon) {
        packageToAddonRepository.save(packageToAddon);
    }

    @Override
    public void deletePackageToAddonByPackageId(Integer packageId) {
        List<PackageToAddon> packageToAddons = this.getPackageToAddonsByPackageId(packageId);
        packageToAddonRepository.deleteAll(packageToAddons);
    }

    @Override
    public void deletePackageToAddon(PackageToAddon packageToAddon) {
        packageToAddonRepository.delete(packageToAddon);
    }

}


