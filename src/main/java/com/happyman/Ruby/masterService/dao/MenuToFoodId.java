package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

import org.hibernate.Hibernate;

@Getter
@Setter
@Embeddable
public class MenuToFoodId implements Serializable {
	@Serial
	private static final long serialVersionUID = 5102557133466500615L;
	@Column(name = "menuId", nullable = false) private Integer menuId;

	@Column(name = "foodId", nullable = false) private Integer foodId;

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
		MenuToFoodId entity = (MenuToFoodId) o;
		return Objects.equals(this.foodId, entity.foodId) &&
			Objects.equals(this.menuId, entity.menuId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(foodId, menuId);
	}

}