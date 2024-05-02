INSERT INTO room (room_capacity, room_name, room_price, room_status, room_type)
VALUES
    (4, 'Room 101', 100.00, 1, 'Standard'),
    (2, 'Room 102', 80.00, 1, 'Economy'),
    (6, 'Room 103', 150.00, 1, 'Deluxe'),
    (3, 'Room 104', 90.00, 1, 'Economy'),
    (5, 'Room 105', 120.00, 1, 'Standard'),
    (4, 'Room 106', 110.00, 1, 'Standard'),
    (2, 'Room 107', 85.00, 1, 'Economy'),
    (3, 'Room 108', 95.00, 1, 'Economy'),
    (5, 'Room 109', 130.00, 1, 'Deluxe'),
    (4, 'Room 110', 105.00, 1, 'Standard');

-- Insert data into the vehicle table
INSERT INTO vehicle (max_count, vehicle_number, vehicle_type) VALUES
    (4, 'ABC123', 'Sedan'),
    (6, 'DEF456', 'SUV'),
    (8, 'GHI789', 'Van'),
    (2, 'JKL012', 'Motorcycle'),
    (5, 'MNO345', 'Truck');

-- Insert data into the driver table, associating each driver with one of the vehicles
INSERT INTO driver (email, first_name, last_name, mobile_no, password, vehicle) VALUES
    ('driver1@example.com', 'John', 'Doe', '1234567890', 'password1', 1), -- Associate driver with vehicle_id 1
    ('driver2@example.com', 'Jane', 'Smith', '9876543210', 'password2', 2), -- Associate driver with vehicle_id 2
    ('driver3@example.com', 'Michael', 'Johnson', '5556667777', 'password3', 3), -- Associate driver with vehicle_id 3
    ('driver4@example.com', 'Emily', 'Davis', '9998887777', 'password4', 4), -- Associate driver with vehicle_id 4
    ('driver5@example.com', 'Chris', 'Brown', '3332221111', 'password5', 5); -- Associate driver with vehicle_id 5
