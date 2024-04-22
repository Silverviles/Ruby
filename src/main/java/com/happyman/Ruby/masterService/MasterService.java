package com.happyman.Ruby.masterService;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.dao.*;
import com.happyman.Ruby.packages.dto.PackageDTO;
import org.springframework.transaction.PlatformTransactionManager;

import java.util.List;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.dao.Seat;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.dao.Vehicle;


public interface MasterService {
	//Method implementation for Driver
	public void addDriver(Driver driver);
	public void addDriverAndVehicle(Driver driver, Vehicle vehicle);
	public void deleteDriver(Driver driver);
	public Driver getDriverById(Integer driverId);
	public Driver getDriverByEmail(String email);
	public Driver getDriverByMobileNo(String mobileNo);
	public List<Driver> getAllDrivers();
	public List<Driver> getAllDriversByVehicleType(String type);

	// Implementation for Vehicle
	public Vehicle getVehicle(Integer vehicleId);
	public Vehicle getVehicleByNumber(String vehicleNumber);
	public void saveVehicle(Vehicle vehicle);

	// methods Implementation for Trip
	public void saveTrip(Trip trip);
	public void deleteTrip(Trip trip);
	public Trip getTripById(Integer tripId);
	public List<Trip> getAllTrips();
	public List<Trip> getAllTripsByVehicleType(String type);
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber);
	public List<Trip> getAllTripsByDriverId(Integer driverId);

	// methods Implementation for Food
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

	// Implementation of Employee
	public void addEmployee(Employee employee);
	public List<Employee> getAllEmployees();
	public void updateEmployee(Employee employee);
	public Boolean deleteEmployee(Integer employeeID);
	public Employee getEmployeeById(Integer employeeID);

	// Common Implementation
	public PlatformTransactionManager getTransactionManager();

	//methods implementations for Addons
	public Addon getAddonById(Integer addonId);
	public void saveAddon(Addon addon);

	public void deleteAddon(Integer addonId);
	public List<Addon> getAllAddons();
	public List<Addon> grtAddonByAvailability(Byte availability);
	public List<Addon> getAddonByPackageId(Integer id);

	//methods implementation for Packages
	public List<Package> getAllPackages();
	public Package getPackageById(Integer packageId);
	public Package getPackageByName(String packageName);
	public List<Package> getPackageByAvailability(Boolean availability);
	public List<Package> getPackageByType(DomainConstants.PackageType type);
	public List<Package> getPackageByMaxAdults(int maxAdults);
	public void addPackage(Package pkg);
	public void deletePackage(Integer packageId);
	public void addPackageToAddon(PackageToAddon packageToAddon);
	public void addPackageWithAddon(PackageDTO packageDTO);
	public  List<PackageDTO> getPackageDTOList();
	public void deletePackageToAddonByPackageId(Integer packageId);
	public void updatePackageByPackageDTO(PackageDTO pkg);
	public void updatePackageDTO(PackageDTO packageDTO);

	public void updatePackageToAddonByPackageDTO(PackageDTO packageDTO);
	List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId);

}
