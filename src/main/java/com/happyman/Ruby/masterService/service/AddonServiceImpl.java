package com.happyman.Ruby.masterService.service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.repository.AddonRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public class AddonServiceImpl implements AddonService {

    private final AddonRepository addonRepository;

    public AddonServiceImpl(AddonRepository addonRepository) {
        this.addonRepository = addonRepository;
    }

    @Override
    public Addon getAddonById(Integer addonId) {
        return addonRepository.findById(addonId).orElse(null);
    }
}
