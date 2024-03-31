CREATE TABLE add_on
(
    addonId           int         NOT NULL AUTO_INCREMENT,
    addonName         varchar(45) NOT NULL,
    addonPrescription varchar(45) NOT NULL,
    addonPrice        int         NOT NULL,
    addonQuantity     int         NOT NULL,
    PRIMARY KEY (addonId)
);

CREATE TABLE addon_to_event
(
    packageId int NOT NULL,
    eventId   int NOT NULL,
    PRIMARY KEY (packageId, eventId),
    CONSTRAINT fkPackage FOREIGN KEY (packageId) REFERENCES package (packageId),
    CONSTRAINT fkEvent FOREIGN KEY (eventId) REFERENCES event (eventId)
);

CREATE TABLE addon_to_package
(
    packageId int NOT NULL,
    addonId   int NOT NULL,
    PRIMARY KEY (packageId, addonId),
    CONSTRAINT fkPackageAddon FOREIGN KEY (packageId) REFERENCES package (packageId),
    CONSTRAINT fkAddon FOREIGN KEY (addonId) REFERENCES add_on (addonId)
);

CREATE TABLE complaints
(
    complainId     int         NOT NULL AUTO_INCREMENT,
    bookingId      int         NOT NULL,
    relatedDetails varchar(45) NOT NULL,
    status         varchar(45) NOT NULL,
    PRIMARY KEY (complainId),
    CONSTRAINT fkBookingComplaint FOREIGN KEY (bookingId) REFERENCES reservation (bookingId)
);

CREATE TABLE custom_event
(
    customEventId int         NOT NULL AUTO_INCREMENT,
    eventId       int         NOT NULL,
    addon         varchar(45) NOT NULL,
    customPrice   int         NOT NULL,
    PRIMARY KEY (customEventId),
    CONSTRAINT fkEventCustom FOREIGN KEY (eventId) REFERENCES event (eventId)
);

CREATE TABLE driver
(
    driverId    int         NOT NULL AUTO_INCREMENT,
    addonId     int         NOT NULL,
    fname       varchar(45) NOT NULL,
    lname       varchar(45) NOT NULL,
    vehicleType varchar(45) NOT NULL,
    capacity    int         NOT NULL,
    PRIMARY KEY (driverId),
    CONSTRAINT fkAddonDriver FOREIGN KEY (addonId) REFERENCES add_on (addonId)
);

CREATE TABLE employee
(
    empId      int         NOT NULL AUTO_INCREMENT,
    categoryId int         NOT NULL,
    fname      varchar(45) NOT NULL,
    lname      varchar(45) NOT NULL,
    contactNo  int         NOT NULL,
    email      varchar(45) NOT NULL,
    PRIMARY KEY (empId),
    CONSTRAINT fkCategoryEmployee FOREIGN KEY (categoryId) REFERENCES shift_catagory (categoryId)
);

CREATE TABLE shift_catagory (
    categoryId     int NOT NULL AUTO_INCREMENT,
    categoryName   varchar(45) NOT NULL,
    location       varchar(45) NOT NULL,
    shiftDuration  int         NOT NULL,
    shiftSalary    float       NOT NULL,
    PRIMARY KEY (categoryId)
);

CREATE TABLE event
(
    eventId            int         NOT NULL AUTO_INCREMENT,
    eventLocation      varchar(45) NOT NULL,
    eventParticipation varchar(45) NOT NULL,
    addonId            int         NOT NULL,
    eventImg           varchar(45) NOT NULL,
    PRIMARY KEY (eventId),
    CONSTRAINT fkAddonEvent FOREIGN KEY (addonId) REFERENCES add_on (addonId)
);

CREATE TABLE feedback
(
    feedbackId   int         NOT NULL AUTO_INCREMENT,
    bookingId    int         NOT NULL,
    providerName varchar(45) NOT NULL,
    description  varchar(45) NOT NULL,
    rating       varchar(45) NOT NULL,
    PRIMARY KEY (feedbackId),
    CONSTRAINT fkBookingFeedback FOREIGN KEY (bookingId) REFERENCES reservation (bookingId)
);

CREATE TABLE food
(
    foodId           int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    foodType         varchar(45) NOT NULL,
    foodPrice        double      NOT NULL,
    foodAvailability tinyint     NOT NULL,
    foodImg          varchar(45) NOT NULL
);

CREATE TABLE food_to_menu
(
    menuId int NOT NULL,
    foodId int NOT NULL,
    PRIMARY KEY (menuId, foodId)
);

CREATE TABLE food_order
(
    foodOrderId int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    price       int         NOT NULL,
    date        datetime(1) NOT NULL
);

CREATE TABLE food_order_to_food
(
    foodId        int NOT NULL,
    foodOrderId int NOT NULL,
    PRIMARY KEY (foodId, foodOrderId),
    CONSTRAINT fkFoodOrder FOREIGN KEY (foodId) REFERENCES food (foodId),
    CONSTRAINT fkFoodOrderOrder FOREIGN KEY (foodOrderId) REFERENCES food_order (foodOrderId)
);

CREATE TABLE menu
(
    menuId          int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    menuAvailability varchar(45) NOT NULL,
    menuValid       varchar(45) NOT NULL,
    menuName        varchar(45) NOT NULL,
    menuPrice       int         NOT NULL
);

CREATE TABLE menu_order
(
    menuOrderId int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    menuId      int         NOT NULL,
    quantity    int         NOT NULL,
    price       int         NOT NULL,
    CONSTRAINT fkMenuOrder FOREIGN KEY (menuId) REFERENCES menu (menuId)
);

CREATE TABLE package
(
    packageId         int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    effectiveDate     date        NOT NULL,
    disconnectiveDate date        NOT NULL,
    maxValidUsers     int         NOT NULL,
    minValidUsers     int         NOT NULL,
    basePrice         int         NOT NULL,
    packageImg        varchar(45) NOT NULL
);

CREATE TABLE reservation
(
    bookingId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    packageId int NOT NULL,
    eventId   int NOT NULL,
    tripId    int NOT NULL,
    paymentId int NOT NULL,
    roomId    int NOT NULL,
    CONSTRAINT fkPackageReservation FOREIGN KEY (packageId) REFERENCES package (packageId),
    CONSTRAINT fkEventReservation FOREIGN KEY (eventId) REFERENCES event (eventId),
    CONSTRAINT fkRoomReservation FOREIGN KEY (roomId) REFERENCES room (roomId)
);

CREATE TABLE reserve_to_room
(
    reservedRoomId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    roomId         int NOT NULL,
    peopleCount    int NOT NULL,
    totalOccupied  int NOT NULL,
    costPerDay     int NOT NULL,
    noOfDays       int NOT NULL,
    CONSTRAINT fkRoomReserved FOREIGN KEY (roomId) REFERENCES room (roomId)
);

CREATE TABLE reserved_to_event
(
    reservedEventId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    eventId         int NOT NULL,
    price           int NOT NULL,
    CONSTRAINT fkEventReserved FOREIGN KEY (eventId) REFERENCES event (eventId)
);

CREATE TABLE reserved_to_package
(
    reservedPackageId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    packageId         int NOT NULL,
    price             int NOT NULL,
    CONSTRAINT fkPackageReserved FOREIGN KEY (packageId) REFERENCES package (packageId)
);

CREATE TABLE room
(
    roomId      int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    maxCapacity int         NOT NULL,
    minCapacity int         NOT NULL,
    roomType    varchar(45) NOT NULL,
    roomCost    int         NOT NULL,
    roomImg     varchar(45) NOT NULL,
    roomName    varchar(45) NOT NULL
);

CREATE TABLE seat_booking
(
    seatBookingId     int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    seatCount         int         NOT NULL,
    effectiveDate     datetime    NOT NULL,
    disconnectiveDate datetime(1) NOT NULL
);

CREATE TABLE seatmap
(
    blockId int         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status  varchar(45) NOT NULL
);

CREATE TABLE seatmap_to_seatbooking
(
    seatBookingId int NOT NULL,
    blockId       int NOT NULL,
    PRIMARY KEY (seatBookingId, blockId),
    CONSTRAINT fkSeatBooking FOREIGN KEY (seatBookingId) REFERENCES seat_booking (seatBookingId),
    CONSTRAINT fkBlock FOREIGN KEY (blockId) REFERENCES seatmap (blockId)
);
