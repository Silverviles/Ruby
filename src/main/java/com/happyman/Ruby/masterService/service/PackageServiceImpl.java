package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.repository.PackageRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PackageServiceImpl implements PackageService {

    private final PackageRepository packageRepository;
    private final MasterService masterService;


    public PackageServiceImpl(PackageRepository packageRepository, MasterService masterService) {
        this.packageRepository = packageRepository;
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
    public Package getPackageByName(String packageName) {
        List<Package> packages = packageRepository.findAll();
        for (Package p : packages) {
            if (p.getName().equals(packageName)) {
                return p;
            }
        }
        return null;
    }


    @Override
    public List<Package> getPackageByAvailability(Byte availability) {
        List<Package> packages = packageRepository.findAll();
        for (Package p : packages) {
            if (p.getAvailability().equals(availability)) {
                packages.add(p);
            }
        }
        return packages;
    }

    @Override
    public List<Package> getPackageByType(DomainConstants.PackageType type) {
        List<Package> packages = packageRepository.findAll();
        for (Package p : packages) {
            if (p.getType().equals(type)) {
                packages.add(p);
            }
        }
        return packages;
    }

    @Override
    public List<Package> getPackageByMaxAdults(int maxAdults) {
        List<Package> packages = packageRepository.findAll();
        for (Package p : packages) {
            if (maxAdults < p.getMaxAdults()) {
                packages.add(p);
            }
        }
        return packages;
    }

    @Override
    public void addPackage(Package pkg) {
        packageRepository.save(pkg);
    }

    @Override
    public void deletePackage(Integer packageId) {
        packageRepository.deleteById(packageId);
    }


//    @Override
//    public List<Addon> getAddonsByPackageId(Integer packageId) {
//        List<PackageToAddonId> packageToAddonIdList = (List<PackageToAddonId>) packageToAddonIdRepository.findAllById();
//        List<Addon> addons = new ArrayList<>();
//        for (PackageToAddonId packageToAddonId : packageToAddonIdList) {
//            if (packageId.equals(packageToAddonId.getPackageId())) {
//                int addonId = packageToAddonId.getAddonId();
//                Addon addon = masterService.getAddonById(addonId);
//                if (addon != null) {
//                    addons.add(addon);
//                }
//            }
//        }
//        return addons;
//    }
}

