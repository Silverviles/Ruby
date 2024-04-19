package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Room;
import org.hibernate.Transaction;
import org.springframework.transaction.PlatformTransactionManager;

import com.happyman.Ruby.masterService.dao.Driver;
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

	// Common Implementation
	public PlatformTransactionManager getTransactionManager();

	//room

	public void saveRoom(Room room);

	public Room getRoomById(Integer roomId);

	public List<Room> getAllRoom();

	public List<Room> getAllRoomByRoomType(String roomType);

	public List<Room> getAllRoomByStatus(Boolean status);


	public List<Room> getAllRoomByGuests(Integer guests);

	void addRoom(Room room);

	void updateRoom(Room room);

	void deleteRoom(Room room);
}
