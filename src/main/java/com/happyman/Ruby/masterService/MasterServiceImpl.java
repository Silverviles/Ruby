package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.*;
import com.happyman.Ruby.masterService.service.EventService;
import com.happyman.Ruby.masterService.service.EventToAddOnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import com.happyman.Ruby.masterService.service.DriverService;
import com.happyman.Ruby.masterService.service.VehicleService;

@Service
public class MasterServiceImpl implements MasterService{
	private final DriverService driverService;
	private final VehicleService vehicleService;
	private final PlatformTransactionManager platformTransactionManager;

	private final EventService eventService;

	private final EventToAddOnService eventAddon;

	@Autowired
	public MasterServiceImpl(
            DriverService driverService,
            VehicleService vehicleService,
            PlatformTransactionManager platformTransactionManager,
			EventService eventService,
			EventToAddOnService eventAddon
    ) {
		this.driverService = driverService;
		this.vehicleService = vehicleService;
		this.platformTransactionManager = platformTransactionManager;
		// TODO: add all the other services here. Declare them as variables above first.
        this.eventService = eventService;
        this.eventAddon = eventAddon;
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
		return null;
	}

	@Override
	public List<Trip> getAllTripsByVehicleType(String type) {
		return null;
	}

	@Override
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber) {
		return null;
	}

	@Override
	public List<Trip> getAllTripsByDriverId(Integer driverId) {
		return null;
	}

	@Override
	public void saveFood(Food food) {

	}

	@Override
	public Food findFoodById(Integer foodId) {
		return null;
	}

	@Override
	public List<Food> getAllFoods() {
		return null;
	}

	@Override
	public List<Food> getAllFoodByCategory(DomainConstants.FoodCategory category) {
		return null;
	}

	@Override
	public List<Food> getAllFoodByAvailability(Byte availability) {
		return null;
	}

	@Override
	public List<Food> getAllFoodByCategoryAndAvailability(DomainConstants.FoodCategory category, Byte availability) {
		return null;
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
		return null;
	}

	@Override
	public List<Seat> getAllSeatsByAvailability(Byte availability) {
		return null;
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
	public List<Event> getAllEvents() {
		return eventService.getAllEvents();
	}

	@Override
	public Event getEventById(Integer eventId) {
		return eventService.getEventById(eventId);
	}

	@Override
	public Event getEventByName(String eventName) {
		return eventService.getEventByName(eventName);
	}

	@Override
	public List<Event> getEventByAvailability(Byte availability) {
		return eventService.getEventByAvailability(availability);
	}

	@Override
	public void addEvent(Event event) {
		eventService.addEvent(event);
	}

	@Override
	public void deleteEvent(Integer eventId) {
		eventService.deleteEvent(eventId);
	}

	@Override
	public void updateEvent(EventAddDTO event) {
		eventService.updateEvent(event);
	}

	@Override
	public void updateEventByEventDTO(EventAddDTO eve) {
		eventService.updateEventByEventDTO(eve);
	}

	@Override
	public List<EventToAddon> getEventToAddonsByEventId(Integer eventId) {
		return eventAddon.getEventToAddonsByEventId(eventId);
	}

	@Override
	public void addEventToAddon(EventToAddon eventToAddon) {
		eventAddon.addEventToAddon(eventToAddon);
	}

	@Override
	public void deleteEventToAddonByEventId(Integer eventId) {
		eventAddon.deleteEventToAddonByEventId(eventId);
	}

	@Override
	public void deleteEventToAddon(EventToAddon eventToAddon) {
		eventAddon.deleteEventToAddon(eventToAddon);
	}

	@Override
	public List<EventAddDTO> getEventDTOList() {
		return null;
	}

	@Override
	public void updateEventAddDTO(EventAddDTO eventAddDTO) {

	}
}
