package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.masterService.dao.*;
import com.happyman.Ruby.masterService.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import com.happyman.Ruby.common.DomainConstants;

@Service
public class MasterServiceImpl implements MasterService{
	private final DriverService driverService;
	private final VehicleService vehicleService;
	private final TripService tripService;
	private final FoodService foodService;
	private final PlatformTransactionManager platformTransactionManager;
	private final PaymentService paymentService;

	@Autowired
	public MasterServiceImpl(
		DriverService driverService,
		VehicleService vehicleService,
		TripService tripService,
		FoodService foodService,PaymentService paymentService,
		PlatformTransactionManager platformTransactionManager
	) {
		this.driverService = driverService;
		this.vehicleService = vehicleService;
		this.tripService = tripService;
		this.foodService = foodService;
		this.platformTransactionManager = platformTransactionManager;
		this.paymentService = paymentService;
		// TODO: add all the other services here. Declare them as variables above first.
	}

	@Override
	public void addDriver(Driver driver) {
		driverService.addDriver(driver);
	}

	@Transactional
	@Override
	public void addDriverAndVehicle(Driver driver, Vehicle vehicle) {
		vehicleService.saveVehicle(vehicle);
		driver.setVehicle(getVehicleByNumber(vehicle.getVehicleNumber()));
		driverService.addDriver(driver);
	}

	@Override
	public Driver getDriverById(Integer driverId) {
		return driverService.getDriverById(driverId);
	}

	@Override
	public Driver getDriverByEmail(String email) {
		return driverService.getDriverByEmail(email);
	}

	@Override
	public Driver getDriverByMobileNo(String mobileNo) {
		return driverService.getDriverByMobileNo(mobileNo);
	}

	@Override
	public List<Driver> getAllDrivers() {
		return driverService.getAllDrivers();
	}

	@Override
	public List<Driver> getAllDriversByVehicleType(String type) {
		return driverService.getAllDriversByVehicleType(type);
	}

	@Override
	public Vehicle getVehicle(Integer vehicleId) {
		return vehicleService.getVehicle(vehicleId);
	}

	@Override
	public Vehicle getVehicleByNumber(String vehicleNumber) {
		return vehicleService.getAllVehicles().stream().filter(
			vehicle -> vehicle.getVehicleNumber().equals(vehicleNumber)).findFirst().orElse(null);
	}

	@Override
	public void saveVehicle(Vehicle vehicle) {
		vehicleService.saveVehicle(vehicle);
	}

	@Override
	public void saveTrip(Trip trip) {

	}

	@Override
	public Trip getTripById(Integer tripId) {
		return null;
	}

	@Override
	public List<Trip> getAllTrips() {
		return List.of();
	}

	@Override
	public List<Trip> getAllTripsByVehicleType(String type) {
		return List.of();
	}

	@Override
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber) {
		return List.of();
	}

	@Override
	public List<Trip> getAllTripsByDriverId(Integer driverId) {
		return List.of();
	}

	@Override
	public void saveFood(Food food) {
		foodService.saveFood(food);
	}

	@Override
	public Food findFoodById(Integer foodId) {
		return foodService.findFoodById(foodId);
	}

	@Override
	public List<Food> getAllFoods() {
		return foodService.getAllFoods();
	}

	@Override
	public List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category) {
		return foodService.getAllFoodByCategory(category);
	}

	@Override
	public List<Food> getAllFoodByAvailability(Byte availability) {
		return foodService.getAllFoodByAvailability(availability);
	}

	@Override
	public List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability) {
		return foodService.getAllFoodByCategoryAndAvailability(category, availability);
	}

	@Override
	public void saveSeat(Seat seat) {

	}

	@Override
	public Seat findSeatById(Integer seatId) {
		return null;
	}

	@Override
	public List<Seat> getAllSeats() {
		return List.of();
	}

	@Override
	public List<Seat> getAllSeatsByAvailability(Byte availability) {
		return List.of();
	}

	@Override
	public Seat findSeatByLocation(String location) {
		return null;
	}

	@Override
	public PlatformTransactionManager getTransactionManager() {
		return this.platformTransactionManager;
	}

	@Override
	public List<Payment> getAllPayments() {
		return List.of();
	}

	@Override
	public Payment getPaymentById(Integer paymentId) {
		return null;
	}

	@Override
	public void UpdatePayment(Payment pay) {

	}

	@Override
	public Payment getPaymentByAmount(Float Amount) {
		return null;
	}

	@Override
	public List<Payment> getPaymentStatus(Byte Status) {
		return List.of();
	}

	@Override
	public void addPayment(Payment payment) {

	}

	@Override
	public void deletePayment(Integer paymentId) {

	}

	@Override
	public void updatePaymentByPaymentDTO(PaymentsDTO payment) {

	}
}
