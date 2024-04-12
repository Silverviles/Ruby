package com.happyman.Ruby.common;

import lombok.Getter;

public class DomainConstants {
	/*
	Trip Status,
		0 = available
		1 = in progress
		2 = completed
	*/

	@Getter
	public enum PackageType {
		FAMILY("Family"),
		COUPLE("Couple"),
		BUSINESS("Business"),
		LARGE_GROUP("Large Group");

		private final String label;

		PackageType(String label) {
			this.label = label;
		}
	}

	@Getter
	public enum RoomType {
		DOUBLE("Double Room"),
		TRIPLE("Triple Room"),
		FAMILY("Family Room");

		private final String label;

		RoomType(String label) {
			this.label = label;
		}
	}

	@Getter
	public enum FoodCategory {
		DRINKS("Drinks"),
		VEGAN_MEALS("Vegan Meals"),
		NON_VEGAN_MEALS("Non-Vegan Meals"),
		SHORT_EATS("Short-eats"),
		SWEETS("Sweets");

		private final String label;

		FoodCategory(String label) {
			this.label = label;
		}
	}

	@Getter
	public enum VehicleType {
		CAR("Car"),
		VAN("Van"),
		BUS("Bus"),
		MOTORCYCLE("Motorcycle"),
		THREE_WHEEL("Three-Wheel"),
		JEEP("Jeep");

		private final String label;

		VehicleType(String label) {
			this.label = label;
		}
	}
}
