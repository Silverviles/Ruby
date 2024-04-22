package com.happyman.Ruby.masterService.repository;

import java.util.List;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.dao.PackageToAddonId;

public interface PackageToAddonRepository extends BaseRepository<PackageToAddon, PackageToAddonId> {

	List<PackageToAddon> findAllById_PackageId(Integer packageId);

	List<PackageToAddon> findAllById_AddonId(Integer addonId);
}
