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
@Table(name = "menu_to_food")
public class MenuToFood {
	@EmbeddedId private MenuToFoodId id;

	@MapsId("menuId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "menuId", nullable = false) private Menu menu;

	@MapsId("foodId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "foodId", nullable = false) private Food food;

}