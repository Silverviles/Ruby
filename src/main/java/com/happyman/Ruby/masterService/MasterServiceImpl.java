package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.masterService.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.dao.Vehicle;
import com.happyman.Ruby.masterService.service.DriverService;
import com.happyman.Ruby.masterService.service.VehicleService;

@Service
public class MasterServiceImpl implements MasterService{
	private final DriverService driverService;
	private final VehicleService vehicleService;
	private final PlatformTransactionManager platformTransactionManager;

	private final RoomService roomService;

    @Autowired
	public MasterServiceImpl(
            DriverService driverService,
            VehicleService vehicleService,
            PlatformTransactionManager platformTransactionManager,
            RoomService roomService
    ) {
		this.driverService = driverService;
		this.vehicleService = vehicleService;
		this.platformTransactionManager = platformTransactionManager;
		// TODO: add all the other services here. Declare them as variables above first.
        this.roomService = roomService;
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
	public PlatformTransactionManager getTransactionManager() {
		return this.platformTransactionManager;
	}

	@Override
	public void saveRoom(Room room) {

	}

	@Override
	public Room getRoomById(Integer roomId) {
		return null;
	}

	@Override
	public List<Room> getAllRoom() {
		return roomService.getAllRoom();
	}

	@Override
	public List<Room> getAllRoomByRoomType(String roomType) {
		return roomService.getAllRoomByRoomType(roomType);
	}

	@Override
	public List<Room> getAllRoomByStatus(Boolean status) {
		return roomService.getAllRoomByStatus(status);
	}

	@Override
	public List<Room> getAllRoomByGuests(Integer guests) {
		return roomService.getAllRoomByGuests(guests);
	}

	@Override
	public void addRoom(Room room) {
		roomService.addRoom(room);
	}

	@Override
	public void updateRoom(Room room) {
		roomService.updateRoom(room);
	}

	@Override
	public void deleteRoom(Room room) {
		roomService.deleteRoom(room);
	}
}
