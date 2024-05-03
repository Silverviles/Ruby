package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

import org.hibernate.Hibernate;

@Getter
@Setter
@Embeddable
public class PackageToAddonId implements Serializable {
	@Serial
	private static final long serialVersionUID = 4871857066494951595L;
	private Integer packageId;
	private Integer addonId;

	public PackageToAddonId(){}

	public PackageToAddonId(Integer packageId, Integer addonId){
		this.packageId = packageId;
		this.addonId = addonId;
	}



	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
		PackageToAddonId entity = (PackageToAddonId) o;
		return Objects.equals(this.packageId, entity.packageId) &&
			Objects.equals(this.addonId, entity.addonId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(packageId, addonId);
	}

}