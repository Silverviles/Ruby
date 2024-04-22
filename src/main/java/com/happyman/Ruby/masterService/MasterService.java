package com.happyman.Ruby.masterService;

import java.util.List;

import org.springframework.transaction.PlatformTransactionManager;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Seat;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.dao.Vehicle;
import com.happyman.Ruby.packages.dto.PackageDTO;


public interface MasterService {
	//Method implementation for Driver
	void addDriver(Driver driver);

	void addDriverAndVehicle(Driver driver, Vehicle vehicle);

	void deleteDriver(Driver driver);

	Driver getDriverById(Integer driverId);

	Driver getDriverByEmail(String email);

	Driver getDriverByMobileNo(String mobileNo);

	List<Driver> getAllDrivers();

	List<Driver> getAllDriversByVehicleType(String type);

	// Implementation for Vehicle
	Vehicle getVehicle(Integer vehicleId);

	Vehicle getVehicleByNumber(String vehicleNumber);

	void saveVehicle(Vehicle vehicle);

	// Implementation for Trip
	void saveTrip(Trip trip);

	void deleteTrip(Trip trip);

	Trip getTripById(Integer tripId);

	List<Trip> getAllTrips();

	List<Trip> getAllTripsByVehicleType(String type);

	List<Trip> getAllTripsByVehicleNumber(String vehicleNumber);

	List<Trip> getAllTripsByDriverId(Integer driverId);

	// Implementation for Food
	void saveFood(Food food);

	Food findFoodById(Integer foodId);

	List<Food> getAllFoods();

	List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category);

	List<Food> getAllFoodByAvailability(Byte availability);

	List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability);

	// Implementation for Seat
	void saveSeat(Seat seat);

	Seat findSeatById(Integer seatId);

	List<Seat> getAllSeats();

	List<Seat> getAllSeatsByAvailability(Byte availability);

	Seat findSeatByLocation(String location);

	// Implementation of Employee
	void addEmployee(Employee employee);

	List<Employee> getAllEmployees();

	void updateEmployee(Employee employee);

	Boolean deleteEmployee(Integer employeeID);

	Employee getEmployeeById(Integer employeeID);

	// Common Implementation
	PlatformTransactionManager getTransactionManager();

	// Payment Implementation
	List<Payment> getAllPayments();

	Payment getPaymentById(Integer paymentId);

	void UpdatePayment(Payment pay);

	Payment getPaymentByAmount(Float Amount);

	List<Payment> getPaymentStatus(Byte Status);

	void addPayment(PaymentsDTO paymentsDTO);

	void addPayment(Payment payment);

	void deletePayment(Integer paymentId);

	void updatePaymentByPaymentDTO(PaymentsDTO payment);

	List<PaymentsDTO> getPaymentsDTOList();

	void deletePaymentBypaymentId(Integer bid);

	//methods implementations for Addons
	Addon getAddonById(Integer addonId);

	void saveAddon(Addon addon);

	void deleteAddon(Integer addonId);

	List<Addon> getAllAddons();

	List<Addon> grtAddonByAvailability(Byte availability);

	List<Addon> getAddonByPackageId(Integer id);

	//methods implementation for Packages
	List<Package> getAllPackages();

	Package getPackageById(Integer packageId);

	Package getPackageByName(String packageName);

	List<Package> getPackageByAvailability(Boolean availability);

	List<Package> getPackageByType(String type);

	List<Package> getPackageByMaxAdults(int maxAdults);

	void addPackage(Package pkg);

	void deletePackage(Integer packageId);

	void addPackageToAddon(PackageToAddon packageToAddon);

	void addPackageWithAddon(PackageDTO packageDTO);

	List<PackageDTO> getPackageDTOList();

	void deletePackageToAddonByPackageId(Integer packageId);

	void updatePackageByPackageDTO(PackageDTO pkg);

	void updatePackageDTO(PackageDTO packageDTO);

	void updatePackageToAddonByPackageDTO(PackageDTO packageDTO);

	List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId);

}
