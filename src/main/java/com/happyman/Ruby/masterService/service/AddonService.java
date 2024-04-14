package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Addon;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AddonService {
     Addon getAddonById(Integer addonId);

     void saveAddon(Addon addon);

     void deleteAddon(Integer addonId);

     List<Addon> getAllAddon();

     List<Addon> getAddonByAvailability(Byte availability);

}
