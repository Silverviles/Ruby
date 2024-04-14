package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.dao.PackageToAddonId;
import com.happyman.Ruby.masterService.repository.PackageRepository;
import com.happyman.Ruby.masterService.repository.PackageToAddonIdRepository;

import java.util.ArrayList;
import java.util.List;

public class PackageServiceImpl implements PackageService {

    private final PackageRepository packageRepository;
    private final PackageToAddonIdRepository packageToAddonIdRepository;
    private final MasterService masterService;


    public PackageServiceImpl(PackageRepository packageRepository, PackageToAddonIdRepository packageToAddonIdRepository, MasterService masterService) {
        this.packageRepository = packageRepository;
        this.packageToAddonIdRepository = packageToAddonIdRepository;
        this.masterService = masterService;
    }

    @Override
    public List<Package> getAllPackages() {
        return packageRepository.findAll();
    }

    @Override
    public Package getPackageById(Integer packageId) {
        return packageRepository.findById(packageId)
                .orElseThrow(() -> new RuntimeException("Package not found with id: " + packageId));
    }

    @Override
    public List<Addon> getAddonsByPackageId(Integer packageId) {
        List<PackageToAddonId> packageToAddonIdList = (List<PackageToAddonId>) packageToAddonIdRepository.findAllById();
        List<Addon> addons = new ArrayList<>();
        for (PackageToAddonId packageToAddonId : packageToAddonIdList) {
            if (packageId.equals(packageToAddonId.getPackageId())) {
                int addonId = packageToAddonId.getAddonId();
                Addon addon = masterService.getAddonById(addonId);
                if (addon != null) {
                    addons.add(addon);
                }
            }
        }
        return addons;
    }
}

