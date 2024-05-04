package com.happyman.Ruby.masterService;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.happyman.Ruby.masterService.dao.*;
import com.happyman.Ruby.masterService.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.happyman.Ruby.billingAndReporting.dto.PaymentDTO;
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
import com.happyman.Ruby.masterService.dao.PackageToAddonId;
import com.happyman.Ruby.masterService.dao.Payment;
import com.happyman.Ruby.masterService.dao.Refund;
import com.happyman.Ruby.masterService.dao.Reservation;
import com.happyman.Ruby.masterService.dao.Room;
import com.happyman.Ruby.masterService.dao.Seat;
import com.happyman.Ruby.masterService.dao.Trip;
import com.happyman.Ruby.masterService.dao.Vehicle;
import com.happyman.Ruby.masterService.service.AddonService;
import com.happyman.Ruby.masterService.service.DriverService;
import com.happyman.Ruby.masterService.service.EmployeeService;
import com.happyman.Ruby.masterService.service.EventService;
import com.happyman.Ruby.masterService.service.EventToAddOnService;
import com.happyman.Ruby.masterService.service.FeedbackService;
import com.happyman.Ruby.masterService.service.FoodService;
import com.happyman.Ruby.masterService.service.PackageService;
import com.happyman.Ruby.masterService.service.PackageToAddonService;
import com.happyman.Ruby.masterService.service.PaymentService;
import com.happyman.Ruby.masterService.service.RefundService;
import com.happyman.Ruby.masterService.service.ReservationService;
import com.happyman.Ruby.masterService.service.RoomService;
import com.happyman.Ruby.masterService.service.SeatService;
import com.happyman.Ruby.masterService.service.TripService;
import com.happyman.Ruby.masterService.service.VehicleService;
import com.happyman.Ruby.packages.dto.PackageDTO;

@Service
public class MasterServiceImpl implements MasterService {
	private final DriverService driverService;
	private final VehicleService vehicleService;
	private final TripService tripService;
	private final FoodService foodService;
	private final EmployeeService employeeService;
	private final AddonService addonService;
	private final PackageService packageService;
	private final PackageToAddonService packageToAddonService;
	private final SeatService seatService;
	private final PaymentService paymentService;
	private final EventService eventService;
	private final EventToAddOnService eventAddon;
	private final RoomService roomService;
	private final FeedbackService feedbackService;
	private final ReservationService reservationService;
	private final RefundService refundService;
	private final MenuService menuService;
	private final ComplaintService complaintService;
	private final RoomReservationService roomReservationService;

	@Autowired
	public MasterServiceImpl(
		DriverService driverService,
		VehicleService vehicleService,
		TripService tripService,
		FoodService foodService,
		PaymentService paymentService,
		EmployeeService employeeService,
		AddonService addonService,
		PackageService packageService,
		PackageToAddonService packageToAddonService,
		SeatService seatService,
		EventService eventService,
		EventToAddOnService eventAddon,
		RoomService roomService,
		FeedbackService feedbackService,
		ReservationService reservationService,
		RefundService refundService,
		MenuService menuService,
		ComplaintService complaintService,
		RoomReservationService roomReservationService
	) {
		this.driverService = driverService;
		this.vehicleService = vehicleService;
		this.tripService = tripService;
		this.foodService = foodService;
		this.employeeService = employeeService;
		this.addonService = addonService;
		this.packageService = packageService;
		this.packageToAddonService = packageToAddonService;
		this.seatService = seatService;
		this.paymentService = paymentService;
		this.eventService = eventService;
		this.eventAddon = eventAddon;
		this.roomService = roomService;
		this.feedbackService = feedbackService;
		this.reservationService = reservationService;
		this.refundService = refundService;
		this.menuService = menuService;
		this.complaintService = complaintService;
		this.roomReservationService = roomReservationService;
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
	public void deleteDriver(Driver driver) {
		driverService.deleteDriver(driver);
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
		tripService.saveTrip(trip);
	}

	@Override
	public void deleteTrip(Trip trip) {
		tripService.deleteTrip(trip);
	}

	@Override
	public Trip getTripById(Integer tripId) {
		return tripService.getTripById(tripId);
	}

	@Override
	public List<Trip> getAllTrips() {
		return tripService.getAllTrips();
	}

	@Override
	public List<Trip> getAllTripsByVehicleType(String type) {
		return tripService.getAllTripsByVehicleType(type);
	}

	@Override
	public List<Trip> getAllTripsByVehicleNumber(String vehicleNumber) {
		return tripService.getAllTripsByVehicleNumber(vehicleNumber);
	}

	@Override
	public List<Trip> getAllTripsByDriverId(Integer driverId) {
		return tripService.getAllTripsByDriverId(driverId);
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
		seatService.saveSeat(seat);
	}

	public void saveMenu(Menu menu) {
		menuService.saveMenu(menu);
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
	public Menu getMenuById(Integer menuId) {
		return menuService.getMenuById(menuId);
	}

	@Override
	public List<Menu> getAllMenus() {
		return menuService.getAllMenus();
	}

	@Override
	public List<Menu> getAllMenusByMealType(String mealType) {
		return menuService.getAllMenusByMealType(mealType);
	}

	@Override
	public List<Menu> getAllMenusByDishType(String dishType) {
		return menuService.getAllMenusByDishType(dishType);
	}

	@Override
	public List<Menu> getAllMenusByAvailability(Byte availability) {
		return menuService.getAllMenusByAvailability(availability);
	}

	@Override
	public void deleteMenuById(Integer menuId) {
		menuService.deleteMenuById(menuId);
	}


	@Override
	public void addEmployee(Employee employee) {
		employeeService.addEmployee(employee);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeService.getAllEmployees();
	}

	@Override
	public void updateEmployee(Employee employee) {
		employeeService.updateEmployee(employee);
	}

	@Override
	public Boolean deleteEmployee(Integer employeeID) {
		return employeeService.deleteEmployee(employeeID);
	}

	@Override
	public Employee getEmployeeById(Integer employeeID) {
		return employeeService.getEmployeeById(employeeID);
	}

	@Override
	public void saveRoom(Room room) {
		roomService.saveRoom(room);
	}

	@Override
	public Room getRoomById(Integer roomId) {
		return roomService.getRoomById(roomId);
	}

	@Override
	public List<Room> getAllRooms() {
		return roomService.getAllRooms();
	}

	@Override
	public List<Room> getAllRoomsByRoomType(String roomType) {
		return roomService.getAllRoomsByRoomType(roomType);
	}

	@Override
	public List<Room> getAllRoomsByStatus(Boolean status) {
		return roomService.getAllRoomsByStatus(status);
	}

	@Override
	public List<Room> getAllRoomsByGuests(Integer guests) {
		return roomService.getAllRoomsByGuests(guests);
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

	@Override
	public void deleteRoomById(Integer roomId) {
		roomService.deleteRoomById(roomId);
	}

	@Override
	public Addon getAddonById(Integer addonId) {
		return addonService.getAddonById(addonId);
	}

	@Override
	public void saveAddon(Addon addon) {
		addonService.saveAddon(addon);
	}

	@Override
	public void deleteAddon(Integer addonId) {
		addonService.deleteAddon(addonId);
	}

	@Override
	public List<Addon> getAllAddons() {
		return addonService.getAllAddon();
	}

	@Override
	public List<Addon> grtAddonByAvailability(Byte availability) {
		return addonService.getAddonByAvailability(availability);
	}

	@Override
	public List<Addon> getAddonByPackageId(Integer id) {
		return addonService.getAddonByPackageId(id);
	}

	@Override
	public List<Package> getAllPackages() {
		return packageService.getAllPackages();
	}

	@Override
	public Package getPackageById(Integer packageId) {
		return packageService.getPackageById(packageId);
	}

	@Override
	public Package getPackageByName(String packageName) {
		return packageService.getPackageByName(packageName);
	}

	@Override
	public List<Package> getPackageByAvailability(Boolean availability) {
		return packageService.getPackageByAvailability(availability);
	}

	@Override
	public List<Package> getPackageByType(String type) {
		return packageService.getPackageByType(type);
	}

	@Override
	public List<Package> getPackageByMaxAdults(int maxAdults) {
		return packageService.getPackageByMaxAdults(maxAdults);
	}

	@Override
	public void addPackage(Package pkg) {
		packageService.addPackage(pkg);
	}

	@Override
	public void deletePackage(Integer packageId) {
		packageService.deletePackage(packageId);
	}

	@Override
	public void addPackageToAddon(PackageToAddon packageToAddon) {
		packageToAddonService.addPackageToAddon(packageToAddon);
	}

	@Override
	public List<Payment> getAllPayments() {
		return paymentService.getAllPayments();
	}

	@Override
	public Payment getPaymentById(Integer paymentId) {
		return paymentService.getPaymentById(paymentId);
	}

	@Override
	public void UpdatePayment(Payment pay) {
		paymentService.addPayment(pay);
	}

	@Override
	public Payment getPaymentByAmount(Float Amount) {
		return paymentService.getPaymentByAmount(Amount);
	}

	@Override
	public List<Payment> getPaymentStatus(Byte Status) {
		return paymentService.getAllPayments().stream().filter(payment ->
			payment.getPaymentStatus().equals(Status)).toList();
	}

	@Override
	public void addPayment(PaymentDTO paymentDTO) {
		/*Payment payment = new Payment();
		payment.setCustomerName(paymentDTO.getCustomerName());
		payment.setCustomerEmail(paymentDTO.getCustomerEmail());
		payment.setBillAmount(paymentDTO.getAmount());
		payment.setPaymentStatus(paymentDTO.getPaymentStatus());
		//TODO:
		paymentService.addPayment(payment);*/
	}

	@Override
	public void addPayment(Payment payment) {
		paymentService.addPayment(payment);
	}

	@Override
	public void deletePayment(Integer paymentId) {
		paymentService.deletePayment(paymentId);
	}

	@Override
	public void updatePaymentByPaymentDTO(PaymentDTO payment) {
		paymentService.updatePaymentByPaymentDTO(payment);
	}

	@Override
	public List<PaymentDTO> getPaymentsDTOList() {
		return null;
	}

	@Override
	public void deletePaymentBypaymentId(Integer bid) {
		paymentService.deletePaymentBypaymentId(bid);
	}

	@Override
	public void addPackageWithAddon(PackageDTO packageDTO) {
		Package pkg = new Package();

		pkg.setName(packageDTO.getPackageName());
		pkg.setDescription(packageDTO.getPackageDescription());
		pkg.setPrice(packageDTO.getPackagePrice());
		pkg.setDiscontinueDate(packageDTO.getPackageDiscontinueDate());
		pkg.setAvailability(packageDTO.getPackageAvailability());
		pkg.setType(packageDTO.getPackageType());
		pkg.setMaxAdults(packageDTO.getMaxAdults());
		pkg.setNoOfNights(packageDTO.getPackageNoOfNights());

		packageService.addPackage(pkg);

	}

	public List<PackageDTO> getPackageDTOList() {
		List<PackageDTO> packageDTOList = new ArrayList<>();
		List<Package> packages = packageService.getAllPackages();
		for (Package p : packages) {
			PackageDTO packageDTO = new PackageDTO();
			packageDTO.setId(p.getId());
			packageDTO.setPackageName(p.getName());
			packageDTO.setPackageDescription(p.getDescription());
			packageDTO.setPackagePrice(p.getPrice());
			packageDTO.setPackageDiscontinueDate(p.getDiscontinueDate());
			packageDTO.setPackageAvailability(p.getAvailability());
			packageDTO.setPackageType(p.getType());
			packageDTO.setMaxAdults(p.getMaxAdults());
			packageDTO.setPackageNoOfNights(p.getNoOfNights());
			packageDTOList.add(packageDTO);
		}
		return packageDTOList;
	}

	@Override
	public void deletePackageToAddonByPackageId(Integer packageId) {
		packageToAddonService.deletePackageToAddonByPackageId(packageId);
	}

	@Override
	public void updatePackageByPackageDTO(PackageDTO pkg) {
		packageService.updatePackageByPackageDTO(pkg);
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
	public void updateEvent(Event event) {
		eventService.updateEvent(event);
	}

	@Override
	public List<Addon> getAddonsByEventId(Integer eventId) {
		return eventAddon.getAddonsByEventId(eventId);
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
	public List<PackageToAddon> getPackageToAddonsByPackageId(Integer packageId) {
		return packageToAddonService.getPackageToAddonsByPackageId(packageId);
	}

	@Override
	public void updatePackageDTO(PackageDTO packageDTO) {
		this.updatePackageByPackageDTO(packageDTO);
	}

	@Override
	public List<Feedback> getAllFeedbacks() {
		return feedbackService.getAllFeedbacks();
	}

	@Override
	public Feedback getFeedbackById(Integer feedbackId) {
		return feedbackService.getFeedbackById(feedbackId);
	}

	@Override
	public Feedback getFeedbackByBookingId(String bookingId) {
		return feedbackService.getFeedbackByBookingId(bookingId);
	}

	@Override
	public void addFeedback(Feedback feedback) {
		feedbackService.addFeedback(feedback);
	}

	@Override
	public void deleteFeedbackById(Integer feedbackId) {
		feedbackService.deleteFeedbackById(feedbackId);
	}

	@Override
	public void deleteFeedbackByBookingId(String bookingId) {
		feedbackService.deleteFeedbackByBookingId(bookingId);
	}

	@Override
	public void updateFeedback(String bookingId) {
		feedbackService.updateFeedback(bookingId);
	}

	@Override
	public Reservation saveReservation(Reservation reservation) {
		return reservationService.save(reservation);
	}

	@Override
	public List<Reservation> findAllReservations() {
		return reservationService.findAll();
	}

	@Override
	public void saveRoomReservation(RoomReservation roomReservation) {
		roomReservationService.saveRoomReservation(roomReservation);
	}

	@Override
	public RoomReservation getRoomReservationById(Integer roomReservationId) {
		return roomReservationService.getRoomReservationById(roomReservationId);
	}

	@Override
	public List<RoomReservation> getAllRoomReservationsByRoomId(String roomId) {
		return List.of();
	}

	/*@Override
	public List<RoomReservation> getAllRoomReservationsByRoomId(String roomId) {
		return roomReservationService.getAllRoomReservationsByRoomId(roomId);
	}*/

	@Override
	public List<RoomReservation> getAllRoomReservationsByStartDate(LocalDate startDate) {
		return roomReservationService.getAllRoomReservationsByStartDate(startDate);
	}

	@Override
	public List<RoomReservation> getAllRoomReservationsByEndDate(LocalDate endDate) {
		return roomReservationService.getAllRoomReservationsByEndDate(endDate);
	}

	@Override
	public List<RoomReservation> getAllRoomReservationsByStartEndDate(LocalDate startDate, LocalDate endDate) {
		return roomReservationService.getAllRoomReservationsByStartEndDate(startDate, endDate);
	}

	@Override
	public List<Reservation> findAllCompletedReservations() {
		return reservationService.findAllCompleted();
	}

	@Override
	public Reservation findReservationById(String id) {
		return reservationService.findById(id);
	}

	@Override
	public void deleteReservationById(String id) {
		reservationService.deleteById(id);
	}

	@Override
	public Refund saveRefund(Refund refund) {
		return refundService.save(refund);
	}

	@Override
	public List<Refund> findAllRefunds() {
		return refundService.findAll();
	}

	@Override
	public Refund findRefundById(Integer id) {
		return refundService.findById(id);
	}

	@Override
	public Complaint saveComplaint(Complaint complaint) {
		return complaintService.saveComplaint(complaint);
	}

	@Override
	public Complaint findComplaintById(Integer id) {
		return complaintService.findComplaintById(id);
	}

	@Override
	public void deleteComplaint(Integer id) {
		complaintService.deleteComplaint(id);
	}

	@Override
	public List<Complaint> findAllComplaints() {
		return complaintService.findAllComplaints();
	}

	@Override
	public Complaint findComplaintByBookingId(String bookingId) {
		return complaintService.findComplaintByBookingId(bookingId);
	}
}