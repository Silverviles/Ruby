package com.happyman.Ruby.masterService.repository;

import com.happyman.Ruby.masterService.dao.PackageToAddonId;
import org.springframework.data.repository.CrudRepository;

public interface PackageToAddonIdRepository extends CrudRepository<PackageToAddonId, Integer> {
    Object findAllById();
}
