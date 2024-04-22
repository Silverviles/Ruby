package com.happyman.Ruby.masterService.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.happyman.Ruby.masterService.dao.Addon;

@Service
public interface AddonService {
	Addon getAddonById(Integer addonId);

	void saveAddon(Addon addon);

	void deleteAddon(Integer addonId);

	List<Addon> getAllAddon();

	List<Addon> getAddonByAvailability(Byte availability);

	List<Addon> getAddonByPackageId(Integer id);
}
