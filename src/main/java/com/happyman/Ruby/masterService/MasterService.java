package com.happyman.Ruby.masterService;

import java.util.List;

import com.happyman.Ruby.events.dto.EventAddDTO;
import com.happyman.Ruby.masterService.dao.Event;
import org.hibernate.Transaction;
import org.springframework.transaction.PlatformTransactionManager;

import com.happyman.Ruby.masterService.dao.Driver;
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

	// Common Implementation
	public PlatformTransactionManager getTransactionManager();

	List<Event> getAllEvents();

	Event getEventById(Integer eventId);

	Event getEventByName(String eventName);

	List<Event> getEventByAvailability(Byte availability);

	void addEvent(Event event);

	void deleteEvent(Integer eventId);

	void updateEvent(EventAddDTO event);

	void updateEventByEventDTO(EventAddDTO eve);

	//Implement for Event
}
