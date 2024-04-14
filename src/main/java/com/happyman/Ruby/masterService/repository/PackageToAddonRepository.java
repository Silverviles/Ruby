package com.happyman.Ruby.masterService.repository;

import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.dao.PackageToAddonId;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PackageToAddonRepository extends JpaRepository<PackageToAddon, PackageToAddonId> {

    List<PackageToAddon> findById_PackageId(Integer packageId);
}
