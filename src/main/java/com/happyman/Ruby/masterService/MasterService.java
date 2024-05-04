package com.happyman.Ruby.masterService;

import java.time.LocalDate;
import java.util.List;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
import com.happyman.Ruby.masterService.dao.*;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Addon;
import com.happyman.Ruby.masterService.dao.Driver;
import com.happyman.Ruby.masterService.dao.Employee;
import com.happyman.Ruby.masterService.dao.Event;
import com.happyman.Ruby.masterService.dao.EventToAddon;
import com.happyman.Ruby.masterService.dao.Feedback;
import com.happyman.Ruby.masterService.dao.Food;
import com.happyman.Ruby.masterService.dao.Package;
import com.happyman.Ruby.masterService.dao.PackageToAddon;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.dao.Reservation;
import com.happyman.Ruby.masterService.dao.Room;
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

	List<TableAvailability> getAllTables();
	TableAvailability getTableAvailabilityById(Integer id);

	void saveSeat(TableAvailability availability);

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

//	Driver getEmployeeByEmail(String email);

	// Payment Implementation
	List<Payment> getAllPayments();

	Payment getPaymentById(Integer paymentId);

	void UpdatePayment(Payment pay);

	Payment getPaymentByAmount(Float Amount);

	List<Payment> getPaymentStatus(Byte Status);

	void addPayment(PaymentDTO paymentDTO);

	void addPayment(Payment payment);

	void deletePayment(Integer paymentId);

	void updatePaymentByPaymentDTO(PaymentDTO payment);

	List<PaymentDTO> getPaymentsDTOList();

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

	List<Event> getAllEvents();

	Event getEventById(Integer eventId);

	Event getEventByName(String eventName);

	public void saveMenu(Menu menu);
	public Menu getMenuById(Integer menuId);
	public List<Menu> getAllMenus();
	public List<Menu> getAllMenusByMealType(String mealType);
	public List<Menu> getAllMenusByDishType(String dishType);
	public List<Menu> getAllMenusByAvailability(Byte availability);
	void deleteMenuById(Integer menuId);

	List<Event> getEventByAvailability(Byte availability);

	void addEvent(Event event);

	void deleteEvent(Integer eventId);

	void updateEvent(Event event);

	List<Addon> getAddonsByEventId(Integer eventId);

	//Implement for Event

	List<EventToAddon> getEventToAddonsByEventId(Integer eventId);

	void addEventToAddon(EventToAddon eventToAddon);

	void deleteEventToAddonByEventId(Integer eventId);

	void deleteEventToAddon(EventToAddon eventToAddon);

	//Implement for EventAddon
	//room

	void saveRoom(Room room);

	Room getRoomById(Integer roomId);

	List<Room> getAllRooms();

	List<Room> getAllRoomsByRoomType(String roomType);

	List<Room> getAllRoomsByStatus(Boolean status);


	List<Room> getAllRoomsByGuests(Integer guests);


	void addRoom(Room room);

	void updateRoom(Room room);

	void deleteRoom(Room room);

	void deleteRoomById(Integer roomId);

	//customerSupport
	List<Feedback> getAllFeedbacks();

	Feedback getFeedbackById(Integer feedbackId);

	Feedback getFeedbackByBookingId(String bookingId);

	void addFeedback(Feedback feedback);

	void deleteFeedbackById(Integer feedbackId);

	void deleteFeedbackByBookingId(String bookingId);

	void updateFeedback(String bookingId);

	Reservation saveReservation(Reservation reservation);

	List<Reservation> findAllReservations();

	void saveRoomReservation(RoomReservation roomReservation);

	RoomReservation getRoomReservationById(Integer roomReservationId);

	List<RoomReservation> getAllRoomReservationsByRoomId(String roomId);

	List<RoomReservation> getAllRoomReservationsByStartDate(LocalDate startDate);

	List<RoomReservation> getAllRoomReservationsByEndDate(LocalDate endDate);

	List<RoomReservation> getAllRoomReservationsByStartEndDate(LocalDate startDate, LocalDate endDate);

	List<Reservation> findAllCompletedReservations();

	Reservation findReservationById(String id);

	void deleteReservationById(String id);

	Refund saveRefund(Refund refund);

	List<Refund> findAllRefunds();

	Refund findRefundById(Integer id);

	public Complaint saveComplaint(Complaint complaint);
	public Complaint findComplaintById(Integer id);
	public void deleteComplaint(Integer id);
	public List<Complaint> findAllComplaints();
	public Complaint findComplaintByBookingId(String bookingId);

}
