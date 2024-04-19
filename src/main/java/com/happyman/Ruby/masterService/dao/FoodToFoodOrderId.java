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
public class FoodToFoodOrderId implements Serializable {
	@Serial private static final long serialVersionUID = 1091811844635204915L;
	@Column(name = "foodId", nullable = false) private Integer foodId;

	@Column(name = "orderId", nullable = false) private Integer orderId;

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
		FoodToFoodOrderId entity = (FoodToFoodOrderId) o;
		return Objects.equals(this.orderId, entity.orderId) &&
			Objects.equals(this.foodId, entity.foodId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(orderId, foodId);
	}

}