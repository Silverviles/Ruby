package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "package_to_addon")
public class PackageToAddon {
	@EmbeddedId private PackageToAddonId id;

	@ManyToOne
	@MapsId("packageId")
	@JoinColumn(name = "package_Id")
	private Package pkg;

	@ManyToOne
	@MapsId("addonId")
	@JoinColumn(name = "addon_Id")
	private Addon addon;


}