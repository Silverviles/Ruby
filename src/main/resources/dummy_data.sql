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

INSERT INTO package (package_id, availability, description, discontinue_date, max_adults, name, price, type, no_of_nights)
VALUES
    (0, 1, 'Escape to a secluded paradise for a romantic retreat. Enjoy intimate moments together with a candlelit dinner under the stars, followed by a pampering couples'' spa treatment to relax and rejuvenate. Cap off your day with a private sunset cruise along the tranquil coast, creating memories that will last a lifetime.', '2026-11-25', 2, 'Romantic Hideaway', 22000, 'Couple', 3),
    (0, 1, 'Treat your family to an exciting adventure filled with laughter and joy. Spend a fun-filled day at the nearby amusement park, creating unforgettable memories on thrilling rides and attractions. Wind down in the evening with a family-friendly movie night, complete with popcorn and snacks. Gather together for a pizza party, bonding over delicious food and shared experiences.', '2025-12-31', 4, 'Family Adventure', 30000, 'Family', 3),
    (0, 1, 'Elevate your next corporate retreat with a luxurious getaway experience. Immerse yourselves in productive meetings and team-building activities in a serene and inspiring environment. Our state-of-the-art meeting facilities are equipped with everything you need for a successful event. Enjoy catered meals crafted with care and attention to detail, fostering camaraderie and collaboration among your team.', '2024-12-31', 20, 'Executive Getaway', 50000, 'Business', 1),
    (0, 1, 'Gather your friends and family for a memorable celebration to cherish forever. Transform your event into a magical occasion with personalized decorations, creating a festive atmosphere that reflects your unique style and personality. Indulge in a sumptuous celebratory cake, specially crafted to mark the occasion in sweet style. Cap off the festivities with a sizzling barbecue dinner, bringing everyone together for an evening of laughter, love, and lasting memories.', '2024-10-31', 40, 'Group Celebration', 50000, 'Large_Group', 2),
    (0, 1, 'Escape with your significant other to a romantic paradise at Happy Man Village. Indulge in intimate moments with a candlelit dinner for two, relax with a couples'' spa treatment, and embark on a private sunset cruise along the picturesque coastline.', '2025-08-17', 2, 'Lovebirds Retreat', 18000, 'Couple', 3);

INSERT INTO table_availability (table_id, seat_Availability) values (1, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (2, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (3, 'reserved');
INSERT INTO table_availability (table_id, seat_Availability) values (4, 'not-available');
INSERT INTO table_availability (table_id, seat_Availability) values (5, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (6, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (7, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (8, 'not-available');
INSERT INTO table_availability (table_id, seat_Availability) values (9, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (10, 'available');
INSERT INTO table_availability (table_id, seat_Availability) values (11, 'reserved');
INSERT INTO table_availability (table_id, seat_Availability) values (12, 'reserved');


INSERT INTO complaint (complaint_id, complaint_description, customer_name, email, booking_id, status)
VALUES
    (1, 'The room was not cleaned properly.', 'John Smith', 'john.smith@example.com', 12345, 'Open'),
    (2, 'The air conditioning was not working.', 'Emily Johnson', 'emily.johnson@example.com', 23456, 'Closed'),
    (3, 'The food was cold.', 'Michael Brown', 'michael.brown@example.com', 34567, 'Pending'),
    (4, 'The shower was leaking.', 'Sarah Wilson', 'sarah.wilson@example.com', 45678, 'Resolved'),
    (5, 'The staff was rude.', 'David Taylor', 'david.taylor@example.com', 56789, 'Open');


INSERT INTO employee (employee_id, shift_type, base_salary, email, first_name, last_name, mobile_no)
VALUES
    (1, 1, 2500, 'john.doe@example.com', 'John', 'Doe', '1234567890'),
    (2, 1, 2600, 'jane.smith@example.com', 'Jane', 'Smith', '1987654321'),
    (3, 2, 2700, 'bob.johnson@example.com', 'Bob', 'Johnson', '1122334455'),
    (4, 2, 2550, 'alice.wang@example.com', 'Alice', 'Wang', '1555099887'),
    (5, 1, 2650, 'michael.brown@example.com', 'Michael', 'Brown', '1777888999');


INSERT INTO event (event_id, availability, description, event_name, price)
VALUES
    (1, true, 'A fun-filled music concert featuring various artists.', 'Music Concert', 50.00),
    (2, true, 'An exciting sports event showcasing top athletes.', 'Sports Event', 75.00),
    (3, true, 'A delightful food festival with a wide range of cuisines.', 'Food Festival', 30.00),
    (4, true, 'A thrilling adventure trek through scenic landscapes.', 'Adventure Trek', 100.00),
    (5, false, 'A captivating art exhibition displaying diverse artworks.', 'Art Exhibition', 20.00);

INSERT INTO event_booking (booking_id, customer_description, customer_name, date, event_type, location, no_of_members)
VALUES
    (1, 'Excited to attend the music concert with friends.', 'Alice Johnson', '2024-05-10', 'Music Concert', 'City Stadium', 4),
    (2, 'Looking forward to the sports event with family.', 'David Smith', '2024-06-15', 'Sports Event', 'Sports Arena', 3),
    (3, 'Eager to explore the food festival with colleagues.', 'Emily Brown', '2024-07-20', 'Food Festival', 'Downtown Square', 6),
    (4, 'Ready for an adventurous trek with hiking buddies.', 'Michael Wang', '2024-08-05', 'Adventure Trek', 'Mountain Range', 2),
    (5, 'Excited to admire artworks at the art exhibition.', 'Sophia Wilson', '2024-09-12', 'Art Exhibition', 'Art Gallery', 1);

INSERT INTO feedback (feedbackId, bookingid, email, user_name, message, is_active)
VALUES
    (1, 101, 'alice@example.com', 'Alice Johnson', 'Great experience overall!', 1),
    (2, 102, 'david@example.com', 'David Smith', 'Excellent event, would highly recommend!', 1),
    (3, 103, 'emily@example.com', 'Emily Brown', 'The food at the festival was delicious!', 1),
    (4, 104, 'michael@example.com', 'Michael Wang', 'Amazing trekking experience, breathtaking views!', 1),
    (5, 105, 'sophia@example.com', 'Sophia Wilson', 'Loved the art exhibition, so inspiring!', 1);

INSERT INTO food (food_id, food_availability, food_category, food_price, food_name)
VALUES
    (1, true, 'Appetizers', 8.99, 'Stuffed Mushrooms'),
    (2, true, 'Main Course', 14.99, 'Grilled Salmon'),
    (3, true, 'Desserts', 6.99, 'Chocolate Lava Cake'),
    (4, true, 'Appetizers', 7.49, 'Garlic Bread'),
    (5, true, 'Main Course', 18.99, 'Filet Mignon');


INSERT INTO menu (menu_id, availability, menu_name, price, dish_type, meal_type)
VALUES
    (1, 1, 'Vegetarian Delight', 10.99, 'Vegetarian', 'Lunch'),
    (2, 1, 'Grilled Chicken Platter', 15.99, 'Non-Vegetarian', 'Dinner'),
    (3, 1, 'Seafood Extravaganza', 25.99, 'Non-Vegetarian', 'Dinner'),
    (4, 0, 'Pasta Paradise', 12.99, 'Vegetarian', 'Lunch'),
    (5, 1, 'Sizzling Steak Special', 22.99, 'Non-Vegetarian', 'Dinner');


INSERT INTO payment (payment_id, bill_amount, payment_status, customer_email, customer_name)
VALUES
    (1, 100.00, 0, 'alice@example.com', 'Alice Johnson'),
    (2, 150.00, 0, 'david@example.com', 'David Smith'),
    (3, 75.00, 1, 'emily@example.com', 'Emily Brown'),
    (4, 200.00, 0, 'michael@example.com', 'Michael Wang'),
    (5, 120.00, 1, 'sophia@example.com', 'Sophia Wilson');

INSERT INTO refund (refund_id, customer_email, customer_name, referenced_booking_id, refund_amount, refund_status, refunded_date)
VALUES
    (1, 'john@example.com', 'John Smith', 101, 50.00, 1, '2024-04-25'),
    (2, 'emily@example.com', 'Emily Johnson', 102, 100.00, 0, NULL),
    (3, 'david@example.com', 'David Wilson', 103, 25.00, 1, '2024-04-28'),
    (4, 'sophia@example.com', 'Sophia Brown', 104, 75.50, 1, '2024-05-02'),
    (5, 'michael@example.com', 'Michael Taylor', 105, 30.00, 0, NULL);
