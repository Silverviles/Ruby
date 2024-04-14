package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.repository.AddonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddonServiceImpl implements AddonService {

    private final AddonRepository addonRepository;

    @Autowired
    public AddonServiceImpl(AddonRepository addonRepository) {
        this.addonRepository = addonRepository;
    }

    @Override
    public Addon getAddonById(Integer addonId) {
        return addonRepository.findById(addonId).orElse(null);
    }

    @Override
    public void saveAddon(Addon addon) {
        addonRepository.save(addon);
    }

    @Override
    public void deleteAddon(Integer addonId) {
        addonRepository.deleteById(addonId);
    }

    @Override
    public List<Addon> getAllAddon() {
        return addonRepository.findAll();
    }

    @Override
    public List<Addon> getAddonByAvailability(Byte availability) {
        List<Addon>  addons = addonRepository.findAll();
        for (Addon addon : addons) {
            if (addon.getAvailability().equals(availability)) {
                addons.add(addon);
            }
        }
        return addons;
    }
}
