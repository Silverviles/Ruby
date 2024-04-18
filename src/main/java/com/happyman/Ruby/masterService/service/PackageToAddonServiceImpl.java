package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.PackageToAddonRepository;
import com.happyman.Ruby.packages.dto.PackageDTO;
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
        for (PackageToAddon packageToAddon : packageToAddons) {
            packageToAddonRepository.delete(packageToAddon);
        }
    }

    @Override
    public void deletePackageToAddon(PackageToAddon packageToAddon) {
        packageToAddonRepository.delete(packageToAddon);
    }

}

