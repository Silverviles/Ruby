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
@Table(name = "food_to_food_order")
public class FoodToFoodOrder {
	@EmbeddedId private FoodToFoodOrderId id;

	@MapsId("foodId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "foodId", nullable = false) private Food food;

	@MapsId("orderId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "orderId", nullable = false) private FoodOrder order;

}