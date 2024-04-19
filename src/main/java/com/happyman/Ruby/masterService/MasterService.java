package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.masterService.dao.*;
import org.hibernate.Transaction;
import org.springframework.transaction.PlatformTransactionManager;

import com.happyman.Ruby.common.DomainConstants;


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

	// Implementation for Seat
	public void saveSeat(Seat seat);

	public Seat findSeatById(Integer seatId);

	public List<Seat> getAllSeats();

	public List<Seat> getAllSeatsByAvailability(Byte availability);

	public Seat findSeatByLocation(String location);

	// Common Implementation
	public PlatformTransactionManager getTransactionManager();



	List<Payment> getAllPayments();

	Payment getPaymentById(Integer paymentId);

	void UpdatePayment(Payment pay);

	Payment getPaymentByAmount(Float Amount);

	List<Payment> getPaymentStatus(Byte Status);

	void addPayment(Payment payment);

	void deletePayment(Integer paymentId);

	void updatePaymentByPaymentDTO(PaymentsDTO payment);
}
