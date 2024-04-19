package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
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