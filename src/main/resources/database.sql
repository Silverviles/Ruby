CREATE TABLE
    add_on
(
    AddonID
                      int
                                  NOT
                                      NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    AddonName
                      varchar(45) NOT NULL,
    AddonPrescription varchar(45) NOT NULL,
    AddonPrice        int         NOT NULL,
    AddonQuantity     int         NOT NULL
);
CREATE TABLE addon_to_event
(
    PackageID
        int
        NOT
            NULL
        PRIMARY
            KEY,
    EventID
        int
        NOT
            NULL
        PRIMARY
            KEY
);
CREATE TABLE addon_to_package
(
    PackageID
        int
        NOT
            NULL
        PRIMARY
            KEY,
    AddonID
        int
        NOT
            NULL
        PRIMARY
            KEY
);
CREATE TABLE complaints
(
    ComplainID     int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    BookingID      int         NOT NULL,
    INDEX (BookingID),
    RelatedDetails varchar(45) NOT NULL,
    Status         varchar(45) NOT NULL
);
CREATE TABLE custom_event
(
    CustomeventID
                int
                            NOT
                                NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    EventID
                int
                            NOT
                                NULL,
    INDEX
        (
         EventID
            ),
    Addon       varchar(45) NOT NULL,
    CustomPrice int         NOT NULL
);
CREATE TABLE driver
(
    DriverID    int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    AddonID     int         NOT NULL,
    INDEX (AddonID),
    Fname       varchar(45) NOT NULL,
    Lname       varchar(45) NOT NULL,
    VehicleType varchar(45) NOT NULL,
    Capacity    int         NOT NULL
);
CREATE TABLE employee
(
    empID      int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CategoryID int         NOT NULL,
    INDEX (CategoryID),
    Fname      varchar(45) NOT NULL,
    Lname      varchar(45) NOT NULL,
    ContactNo  int         NOT NULL,
    email      varchar(45) NOT NULL
);
CREATE TABLE event
(
    EventID            int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    EventLocation      varchar(45) NOT NULL,
    EventParticipation varchar(45) NOT NULL,
    AddonID            int         NOT NULL,
    EventImg           varchar(45) NOT NULL
);
CREATE TABLE feedback
(
    FeedbackID   int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    BookingID    int         NOT NULL,
    INDEX (BookingID),
    ProviderName varchar(45) NOT NULL,
    Description  varchar(45) NOT NULL,
    Rating       varchar(45) NOT NULL
);
CREATE TABLE food
(
    FoodID           int         NOT NULL PRIMARY KEY,
    FoodType         varchar(45) NOT NULL,
    FoodPrice        double      NOT NULL,
    FoodAvailability tinyint     NOT NULL,
    Foodimg          varchar(45) NOT NULL
);
CREATE TABLE food_to_menu
(
    MenuID
        int
        NOT
            NULL
        PRIMARY
            KEY,
    FoodID
        int
        NOT
            NULL
        PRIMARY
            KEY
);
CREATE TABLE foodorder
(
    FoodorderID int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    price       int         NOT NULL,
    date        datetime(1) NOT NULL
);
CREATE TABLE foodorder_to_food
(
    FoodID
        int
        NOT
            NULL
        PRIMARY
            KEY,
    FoodorderID
        int
        NOT
            NULL
        PRIMARY
            KEY
);
CREATE TABLE menu
(
    MenuID          int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    MenuAvaiability varchar(45) NOT NULL,
    MenuValid       varchar(45) NOT NULL,
    MenuName        varchar(45) NOT NULL,
    MenuPrice       int         NOT NULL
);
CREATE TABLE menuorder
(
    MorderID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    MenuID   int NOT NULL,
    INDEX (MenuID),
    Quantity int NOT NULL,
    Price    int NOT NULL
);
CREATE TABLE package
(
    PackageID         int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    EffectiveDate     date        NOT NULL,
    DisconnectiveDate date        NOT NULL,
    MaxValidUsers     int         NOT NULL,
    MinValidUsers     int         NOT NULL,
    basePrice         int         NOT NULL,
    PackageImg        varchar(45) NOT NULL
);
CREATE TABLE reservation
(
    BookingID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PackageID int NOT NULL,
    INDEX (PackageID),
    EventID   int NOT NULL,
    INDEX (EventID),
    TripID    int NOT NULL,
    PaymentID int NOT NULL,
    RoomID    int NOT NULL,
    INDEX (RoomID)
);
CREATE TABLE reserve_to_room
(
    ReservedRoomID
                  int
                      NOT
                          NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    RoomID
                  int
                      NOT
                          NULL,
    INDEX
        (
         RoomID
            ),
    PeopleCount   int NOT NULL,
    TotalOccupied int NOT NULL,
    CostPerDay    int NOT NULL,
    NoOfDays      int NOT NULL
);
CREATE TABLE reserved_to_event
(
    ReserveEventID
          int
              NOT
                  NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    EventID
          int
              NOT
                  NULL,
    INDEX
        (
         EventID
            ),
    Price int NOT NULL
);
CREATE TABLE reserved_to_package
(
    ReservePackageID
          int
              NOT
                  NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    PackageID
          int
              NOT
                  NULL,
    INDEX
        (
         PackageID
            ),
    Price int NOT NULL
);
CREATE TABLE room
(
    RoomID      int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    MaxCapacity int         NOT NULL,
    MinCapacity int         NOT NULL,
    RoomType    varchar(45) NOT NULL,
    RoomCost    int         NOT NULL,
    RoomImg     varchar(45) NOT NULL,
    RoomName    varchar(45) NOT NULL
);
CREATE TABLE seat_booking
(
    SeatbookingID     int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SeatCount         int         NOT NULL,
    EffectiveDate     datetime    NOT NULL,
    DisconnectiveDate datetime(1) NOT NULL
);
CREATE TABLE seatmap
(
    BlockID int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Status  varchar(45) NOT NULL
);
CREATE TABLE seatmap_to_seatbooking
(
    SeatBookingID
        int
        NOT
            NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    BlockID
        int
        NOT
            NULL
        PRIMARY
            KEY
);
CREATE TABLE shiftassignment
(
    ShiftID    int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    empID      int NOT NULL,
    INDEX (empID),
    CategoryID int NOT NULL,
    startTime  int NOT NULL
);
CREATE TABLE shiftcatagory
(
    CatagoryID    int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CatagoryName  varchar(45) NOT NULL,
    Location      varchar(45) NOT NULL,
    ShiftDuration int         NOT NULL,
    ShiftSalary   double      NOT NULL
);
CREATE TABLE temp_reservation
(
    TempBokkingID
           int
                       NOT
                           NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    Field1
           varchar(45) NOT NULL,
    Field2 varchar(45) NOT NULL
);
CREATE TABLE trip
(
    TripID       int         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    DriverID     int         NOT NULL,
    INDEX (DriverID),
    StartTime    time        NOT NULL,
    EndTime      time        NOT NULL,
    TripStatus   varchar(45) NOT NULL,
    VisitorCount int         NOT NULL,
    Destination  varchar(45) NOT NULL
);
CREATE TABLE trip_history
(
    TriphistoryID
                int
                       NOT
                           NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    TripID
                int
                       NOT
                           NULL,
    DriverID
                int
                       NOT
                           NULL,
    INDEX
        (
         DriverID
            ),
    RouteLength double NOT NULL,
    TripTime    time   NOT NULL,
    TripCost    float  NOT NULL
);
CREATE TABLE trip_request
(
    TriprequestID
               int
                           NOT
                               NULL
        PRIMARY
            KEY
        AUTO_INCREMENT,
    DriverID
               int
                           NOT
                               NULL,
    INDEX
        (
         DriverID
            ),
    TripStatus varchar(45) NOT NULL
);