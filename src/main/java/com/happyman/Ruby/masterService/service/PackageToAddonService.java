package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.PackageToAddon;

import java.util.List;

public interface PackageToAddonService {
    List<PackageToAddon> getAddonsForPackage(Integer packageId);
}
