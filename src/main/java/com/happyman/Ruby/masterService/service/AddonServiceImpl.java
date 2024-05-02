package com.happyman.Ruby.masterService.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.repository.AddonRepository;
import com.happyman.Ruby.masterService.repository.PackageToAddonRepository;

@Service
public class AddonServiceImpl implements AddonService {

	private final AddonRepository addonRepository;
	private final PackageToAddonRepository pkgToAddonRepository;

	@Autowired
	public AddonServiceImpl(AddonRepository addonRepository, PackageToAddonRepository pkgToAddonRepository) {
		this.addonRepository = addonRepository;
		this.pkgToAddonRepository = pkgToAddonRepository;
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
		List<Addon> addons = addonRepository.findAll();
		for (Addon addon : addons) {
			if (addon.getAddonAvailability().equals(availability)) {
				addons.add(addon);
			}
		}
		return addons;
	}

	@Override
	public List<Addon> getAddonByPackageId(Integer id) {
		List<Addon> addons = new ArrayList<Addon>();
		List<PackageToAddon> packageToAddons = pkgToAddonRepository.findAllById_PackageId(id);
		for (PackageToAddon packageToAddon : packageToAddons) {
			addons.add(packageToAddon.getAddon());
		}
		return addons;
	}
}
