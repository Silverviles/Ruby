package com.happyman.Ruby.masterService;

import java.util.List;

import org.springframework.transaction.PlatformTransactionManager;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.dao.RestaurantTable;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.dao.Vehicle;


public interface MasterService {
	//Method implementation for Driver
	public void addDriver(Driver driver);
	public void addDriverAndVehicle(Driver driver, Vehicle vehicle);
	public Driver getDriverById(Integer driverId);
	public Driver getDriverByEmail(String email);
	public Driver getDriverByMobileNo(String mobileNo);
	public List<Driver> getAllDrivers();
	public List<Driver> getAllDriversByVehicleType(String type);

	// Implementation for Vehicle
	public Vehicle getVehicle(Integer vehicleId);
	public Vehicle getVehicleByNumber(String vehicleNumber);
	public void saveVehicle(Vehicle vehicle);

	// Implementation for Trip
	public void saveTrip(Trip trip);
	public Trip getTripById(Integer tripId);
	public List<Trip> getAllTrips();
	public List<Trip> getAllTripsByVehicleType(String type);
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber);
	public List<Trip> getAllTripsByDriverId(Integer driverId);

	// Implementation for Food
	public void saveFood(Food food);
	public Food findFoodById(Integer foodId);
	public List<Food> getAllFoods();
	public List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category);
	public List<Food> getAllFoodByAvailability(Byte availability);
	public List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability);

	RestaurantTable save(RestaurantTable restaurantTable);
	List<RestaurantTable> findAll();
	RestaurantTable findById(Integer id);
	void deleteById(Integer id);

	// Common Implementation
	public PlatformTransactionManager getTransactionManager();
}
