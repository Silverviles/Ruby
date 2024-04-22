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

	@MapsId("packageId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "packageId", nullable = false) private Package packageField;

	@MapsId("addonId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "addonId", nullable = false) private Addon addon;


}