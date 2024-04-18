//package com.happyman.Ruby.packages.utils;
//
//import com.happyman.Ruby.masterService.MasterService;
//import com.happyman.Ruby.masterService.dao.Package;
//import com.happyman.Ruby.packages.dto.PackageDTO;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class PackageAndAddonList {
//
//    public static List<PackageDTO> packageDTOList(MasterService masterService)
//    {
//        List<PackageDTO> packageDTOList = new ArrayList<>();
//        List<Package> packages = masterService.getAllPackages();
//        for(Package p : packages)
//        {
//            PackageDTO packageDTO = new PackageDTO();
//            packageDTO.setId(p.getId());
//            packageDTO.setPackageName(p.getName());
//            packageDTO.setPackageDescription(p.getDescription());
//            packageDTO.setPackagePrice(p.getPrice());
//            packageDTO.setPackageDiscontinueDate(p.getDiscontinueDate());
//            packageDTO.setPackageAvailability(p.getAvailability());
//            packageDTO.setPackageType(p.getType().toString());
//            packageDTO.setMaxAdults(p.getMaxAdults());
//            packageDTO.setAddonList(masterService.getAddonByPackageId(p.getId()));
//            packageDTOList.add(packageDTO);
//        }
//        return packageDTOList;
//    }
//}
