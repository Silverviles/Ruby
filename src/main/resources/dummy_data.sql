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

INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Extended Warranty', 1, 'Extend your warranty coverage for an additional year.', 'warranty.jpg', 29.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Premium Support', 1, 'Access priority support for quicker issue resolution.', 'support.jpg', 49.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Data Backup Service', 1, 'Automatically backup your important data to the cloud.', 'backup.jpg', 19.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Security Software', 1, 'Protect your device from viruses and malware with advanced security software.', 'security.jpg', 39.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Professional Installation', 1, 'Get professional assistance with the installation of your product.', 'installation.jpg', 69.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Training Session', 1, 'Receive personalized training on how to use your new product effectively.', 'training.jpg', 59.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Extended Battery', 0, 'Upgrade to a higher capacity battery for longer usage.', 'battery.jpg', 49.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Carrying Case', 1, 'Protect your device while on the go with a durable carrying case.', 'case.jpg', 19.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('Wireless Mouse', 1, 'Enhance your productivity with a wireless mouse.', 'mouse.jpg', 29.99);
INSERT INTO addons (addon_name, availability, description, image, price) VALUES ('External Hard Drive', 1, 'Expand your storage capacity with an external hard drive.', 'hard_drive.jpg', 79.99);

INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Experience the ultimate luxury with our Deluxe Suite package, featuring stunning views and premium amenities.', NULL, 2, 'Deluxe Suite', 299.99, 'Luxury', 3);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Explore the city with our City Explorer package, including guided tours and cultural experiences.', NULL, 4, 'City Explorer', 199.99, 'Adventure', 5);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Relax and rejuvenate with our Spa Retreat package, featuring soothing spa treatments and wellness activities.', NULL, 2, 'Spa Retreat', 349.99, 'Relaxation', 2);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Experience the thrill of the outdoors with our Wilderness Adventure package, including camping and hiking expeditions.', NULL, 2, 'Wilderness Adventure', 249.99, 'Adventure', 4);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Enjoy a romantic getaway with our Honeymoon Escape package, featuring private dinners and couples spa treatments.', NULL, 2, 'Honeymoon Escape', 399.99, 'Romance', 7);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Discover the beauty of nature with our Nature Retreat package, including wildlife tours and nature hikes.', NULL, 2, 'Nature Retreat', 279.99, 'Nature', 3);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Experience the local cuisine with our Foodie Adventure package, featuring culinary tours and cooking classes.', NULL, 2, 'Foodie Adventure', 199.99, 'Culinary', 4);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Embark on a cultural journey with our Heritage Experience package, including visits to historical sites and cultural performances.', NULL, 4, 'Heritage Experience', 299.99, 'Cultural', 3);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Indulge in luxury with our VIP Experience package, featuring exclusive access and personalized services.', NULL, 2, 'VIP Experience', 499.99, 'Luxury', 2);
INSERT INTO package (availability, description, discontinue_date, max_adults, name, price, type, no_of_nights) VALUES (1, 'Spend quality time with the family with our Family Fun package, including family-friendly activities and accommodations.', NULL, 4, 'Family Fun', 249.99, 'Family', 3);

INSERT INTO TableAvailability (table_id, seat_Availability) values (1, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (2, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (3, 'reserved');
INSERT INTO TableAvailability (table_id, seat_Availability) values (4, 'not-available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (5, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (6, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (7, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (8, 'not-available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (9, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (10, 'available');
INSERT INTO TableAvailability (table_id, seat_Availability) values (11, 'reserved');
INSERT INTO TableAvailability (table_id, seat_Availability) values (12, 'reserved');
