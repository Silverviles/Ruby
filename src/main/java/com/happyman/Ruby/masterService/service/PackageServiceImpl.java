package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.repository.PackageRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PackageServiceImpl implements PackageService {

    private final PackageRepository packageRepository;

    public PackageServiceImpl(PackageRepository packageRepository) {
        this.packageRepository = packageRepository;
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
    public List<Package> getPackageByAvailability(Boolean availability) {
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

}

