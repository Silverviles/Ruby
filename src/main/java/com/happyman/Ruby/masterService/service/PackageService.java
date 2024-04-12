package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Package;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PackageService {
    List<Package> getAllPackages();
}
