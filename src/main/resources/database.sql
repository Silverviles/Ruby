CREATE TABLE shift_category
(
    categoryId    int         NOT NULL AUTO_INCREMENT,
    categoryName  varchar(45) NOT NULL,
    location      varchar(45) NOT NULL,
    shiftDuration int         NOT NULL,
    shiftSalary   float       NOT NULL,
    PRIMARY KEY (categoryId)
);
CREATE TABLE room
(
    roomId       int                                NOT NULL auto_increment,
    roomName     varchar(45)                        NOT NULL,
    roomType     enum ('Double', 'Tripe', 'Family') NOT NULL,
    roomCapacity int                                NOT NULL,
    roomPrice    float                              NOT NULL,
    roomStatus   tinyint                            NOT NULL,
    CONSTRAINT room_pk_1 PRIMARY KEY (roomId)
);
CREATE TABLE food
(
    foodId           int          NOT NULL AUTO_INCREMENT,
    foodCategory     enum('Drinks', 'Vegan Meals', 'Non-Vegan Meals', 'Short-eats', 'Sweets'),
    foodPrice        double       NOT NULL,
    foodAvailability tinyint      NOT NULL,
    foodImg          varchar(100) NOT NULL,
    CONSTRAINT food_pk_1 PRIMARY KEY (foodId)
);
CREATE TABLE employee
(
    employeeId int         NOT NULL auto_increment,
    firstName  varchar(45) NOT NULL,
    lastName   varchar(45) NOT NULL,
    email      varchar(100),
    mobileNo   char(10)    NOT NULL,
    shiftType  int         NOT NULL, -- TODO: Add enum types for employees. Discuss with Nethaki --
    baseSalary float       NOT NULL,
    CONSTRAINT employee_pk_1 PRIMARY KEY (employeeId),
    CONSTRAINT employee_fk_shift_category FOREIGN KEY (shiftType) REFERENCES shift_category (categoryId)
);
CREATE TABLE vehicle
(
    vehicleId   int         NOT NULL auto_increment,
    vehicleType enum('Car', 'Van', 'Bus', 'MotorCycle', 'Three-Wheel', 'Jeep'),
    vehicleNumber varchar(20) NOT NULL UNIQUE,
    maxCount    int         NOT NULL,
    CONSTRAINT vehicle_pk_1 PRIMARY KEY (vehicleId)
);
CREATE TABLE driver
(
    driverId  int          NOT NULL auto_increment,
    firstName varchar(45)  NOT NULL,
    lastName  varchar(45)  NOT NULL,
    email     varchar(100) NOT NULL,
    mobileNo  char(10)     NOT NULL,
    vehicle   int          NOT NULL,
    password  varchar(50)  NOT NULL,
    CONSTRAINT driver_pk_1 PRIMARY KEY (driverId),
    CONSTRAINT driver_fk_vehicle FOREIGN KEY (vehicle) REFERENCES vehicle (vehicleId)
);
CREATE TABLE trip
(
    tripId     int     NOT NULL auto_increment,
    driverId   int     NOT NULL,
    tripStatus tinyint NOT NULL DEFAULT 0,
    totalCost  bigint  NOT NULL,
    tripDestination varchar(255) NOT NULL,
    CONSTRAINT trip_pk_1 PRIMARY KEY (tripId),
    CONSTRAINT trip_fk_driver FOREIGN KEY (driverId) REFERENCES driver (driverId)
);
CREATE TABLE package
(
    packageId       int          NOT NULL auto_increment,
    name            varchar(100) NOT NULL,
    description     text         NOT NULL,
    price           float        NOT NULL,
    discontinueDate date,
    availability    tinyint      NOT NULL,
    type            enum ('Family', 'Couple', 'Business', 'Large Group'),
    maxAdults       int,
    CONSTRAINT package_pk_1 PRIMARY KEY (packageId)
);
CREATE TABLE addons
(
    addonId      int         NOT NULL auto_increment,
    addonName    varchar(50) NOT NULL,
    description  varchar(200),
    price        float,
    availability tinyint     NOT NULL,
    image        varchar(100),
    CONSTRAINT PRIMARY KEY (addonId)
);
CREATE TABLE package_to_addon
(
    packageId int NOT NULL,
    addonId   int NOT NULL,
    CONSTRAINT package_to_addon_pk_1 PRIMARY KEY (packageId, addonId),
    CONSTRAINT package_to_addon_fk_package FOREIGN KEY (packageId) references package (packageId),
    CONSTRAINT package_to_addon_fk_addon FOREIGN KEY (addonId) references addons (addonId)
);
CREATE TABLE event
(
    eventId      int         NOT NULL auto_increment,
    eventName    varchar(50) NOT NULL,
    description  text,
    price        float,
    availability tinyint     NOT NULL,
    image        varchar(100),
    CONSTRAINT PRIMARY KEY (eventId)
);
CREATE TABLE event_to_addon
(
    eventId int NOT NULL,
    addonId int NOT NULL,
    CONSTRAINT event_to_addon_pk_1 PRIMARY KEY (eventId, addonId),
    CONSTRAINT event_to_addon_fk_package FOREIGN KEY (eventId) references event (eventId),
    CONSTRAINT event_to_addon_fk_addon FOREIGN KEY (addonId) references addons (addonId)
);
CREATE TABLE menu
(
    menuId       int         NOT NULL auto_increment,
    menuName     varchar(50) NOT NULL,
    availability tinyint DEFAULT 0,
    price        float       NOT NULL,
    CONSTRAINT menu_pk_1 PRIMARY KEY (menuId)
);
CREATE TABLE menu_to_food
(
    menuId int NOT NULL,
    foodId int NOT NULL,
    CONSTRAINT menu_to_food_pk_1 PRIMARY KEY (menuId, foodId),
    CONSTRAINT menu_to_food_fk_menu FOREIGN KEY (menuId) REFERENCES menu (menuId),
    CONSTRAINT menu_to_food_fk_food FOREIGN KEY (foodId) REFERENCES food (foodId)
);
CREATE TABLE seat
(
    seatId               int     NOT NULL auto_increment,
    seatLocation         char(3) NOT NULL,
    locationAvailability tinyint NOT NULL,
    constraint seat_pk_1 primary key (seatId)
);
CREATE TABLE food_order
(
    orderId       int     NOT NULL Auto_increment,
    customerName  varchar(50),
    orderPrice    float   NOT NULL,
    seatId        int,
    paymentStatus tinyint NOT NULL DEFAULT 0,
    CONSTRAINT order_pk_1 PRIMARY KEY (orderId),
    CONSTRAINT food_order_fk_seat foreign key (seatId) references seat (seatId)
);
CREATE TABLE food_to_food_order
(
    foodId  int NOT NULL,
    orderId int NOT NULL,
    constraint food_to_food_order_pk_1 primary key (foodId, orderId),
    constraint food_to_food_order_fk_food foreign key (foodId) references food (foodId),
    constraint food_to_food_order_fk_food_order foreign key (orderId) references food_order (orderId)
);
CREATE TABLE payment
(
    paymentId     int   not null auto_increment,
    billAmount    float NOT NULL DEFAULT 0,
    paymentStatus tinyint        DEFAULT 0,
    constraint payment primary key (paymentId)
);
CREATE TABLE room_reservation
(
    roomReservationId int  not null auto_increment,
    roomId            int  not null,
    startDate         date not null,
    endDate           date not null,
    constraint room_reservation_pk_1 primary key (roomReservationId),
    constraint room_reservation_fk_room foreign key (roomId) references room (roomId)
);
CREATE TABLE reservation
(
    bookingId         char(10) NOT NULL,
    roomReservationId int      not null,
    tripId            int,
    eventId           int,
    packageId         int,
    menuId            int,
    paymentId         int,
    discontinueDate   date,
    constraint reservation_pk_1 primary key (bookingId),
    constraint reservation_fk_room_reservation foreign key (roomReservationId) references room_reservation (roomReservationId),
    constraint reservation_fk_trip foreign key (tripId) references trip (tripId),
    constraint reservation_fk_event foreign key (eventId) references event (eventId),
    constraint reservation_fk_package foreign key (packageId) references package (packageId),
    constraint reservation_fk_menu foreign key (menuId) references menu (menuId),
    constraint reservation_fk_payment foreign key (paymentId) references payment (paymentId)
);
CREATE TABLE feedback
(
    feedbackId  int      not null auto_increment,
    bookingID   char(10) NOT NULL,
    description text     NOT NULL,
    constraint feedback_pk_1 primary key (feedbackId),
    constraint feedback_fk_reservation foreign key (bookingId) references reservation (bookingId)
);