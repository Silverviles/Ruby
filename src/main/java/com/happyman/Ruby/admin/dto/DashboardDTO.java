package com.happyman.Ruby.admin.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DashboardDTO {
	// Rooms
	private Integer totalRooms;
	private Integer availableRooms;
	private Integer unavailableRooms;
	private Integer villaCapacity;

	// Restaurant
	private Integer allMeals;
	private Integer availableMeals;
	private Integer unavailableMeals;
	private Integer restaurantCapacity;
	private Integer availableSeats;
	private Integer bookedSeats;

	// Package
	private Integer allPackages;
	private Integer availablePackages;
	private String highestAddonPackage;
	private Integer availableAddons;

	// Events
	private Integer allEvents;
	private Integer availableEvents;
	private String highestEventPackage;
	// Addons are shared with packages

	// Customer Support
	private Integer feedbackCount;
	private Integer pendingComplaints;
	private Integer resolvedComplaints;
	private Integer highRatings;
	private Integer lowRatings;

	// Employee
	private Integer allEmployees;
	private Integer dayShift;
	private Integer nightShift;
	private Float averageSalary;
	private Float highestSalary;
}
