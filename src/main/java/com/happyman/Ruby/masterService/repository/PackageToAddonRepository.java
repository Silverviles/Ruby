package com.happyman.Ruby.masterService.repository;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.dao.PackageToAddonId;

import java.util.List;

public interface PackageToAddonRepository extends BaseRepository<PackageToAddon, PackageToAddonId> {

    List<PackageToAddon> findAllById_PackageId(Integer packageId);
    List<PackageToAddon> findAllById_AddonId(Integer addonId);
}
