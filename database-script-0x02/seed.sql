INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('uuid1', 'John', 'Doe', 'john.doe@email.com', 'hash1', '123-456-7890', 'guest', '2025-01-01 10:00:00'),
('uuid2', 'Jane', 'Smith', 'jane.smith@email.com', 'hash2', '234-567-8901', 'guest', '2025-01-02 10:00:00'),
('uuid3', 'Alice', 'Johnson', 'alice.j@email.com', 'hash3', '345-678-9012', 'host', '2025-01-03 10:00:00'),
('uuid4', 'Bob', 'Brown', 'bob.brown@email.com', 'hash4', '456-789-0123', 'host', '2025-01-04 10:00:00'),
('uuid5', 'Emma', 'Davis', 'emma.davis@email.com', 'hash5', NULL, 'guest', '2025-01-05 10:00:00'),
('uuid6', 'Michael', 'Wilson', 'michael.w@email.com', 'hash6', '567-890-1234', 'admin', '2025-01-06 10:00:00'),
('uuid7', 'Sarah', 'Taylor', 'sarah.t@email.com', 'hash7', '678-901-2345', 'host', '2025-01-07 10:00:00'),
('uuid8', 'David', 'Clark', 'david.clark@email.com', 'hash8', '789-012-3456', 'guest', '2025-01-08 10:00:00'),
('uuid9', 'Laura', 'Martinez', 'laura.m@email.com', 'hash9', NULL, 'admin', '2025-01-09 10:00:00'),
('uuid10', 'James', 'Lee', 'james.lee@email.com', 'hash10', '890-123-4567', 'admin', '2025-01-10 10:00:00');


INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
('uuid11', 'uuid3', 'Cozy Beach Cottage', 'A charming cottage by the sea.', 'Miami, FL', 120.00, '2025-01-11 10:00:00', '2025-01-11 10:00:00'),
('uuid12', 'uuid3', 'Downtown Loft', 'Modern loft in the city center.', 'New York, NY', 200.00, '2025-01-12 10:00:00', '2025-01-12 10:00:00'),
('uuid13', 'uuid4', 'Mountain Cabin', 'Rustic cabin with mountain views.', 'Aspen, CO', 150.00, '2025-01-13 10:00:00', '2025-01-13 10:00:00'),
('uuid14', 'uuid4', 'Urban Studio', 'Compact studio in the heart of the city.', 'Chicago, IL', 90.00, '2025-01-14 10:00:00', '2025-01-14 10:00:00'),
('uuid15', 'uuid7', 'Lake House', 'Spacious house by the lake.', 'Austin, TX', 180.00, '2025-01-15 10:00:00', '2025-01-15 10:00:00'),
('uuid16', 'uuid3', 'City Apartment', 'Bright apartment near downtown.', 'Seattle, WA', 110.00, '2025-01-16 10:00:00', '2025-01-16 10:00:00'),
('uuid17', 'uuid4', 'Countryside Villa', 'Luxurious villa in the countryside.', 'Napa Valley, CA', 250.00, '2025-01-17 10:00:00', '2025-01-17 10:00:00'),
('uuid18', 'uuid7', 'Beachfront Condo', 'Stunning condo with ocean views.', 'San Diego, CA', 220.00, '2025-01-18 10:00:00', '2025-01-18 10:00:00'),
('uuid19', 'uuid3', 'Ski Chalet', 'Cozy chalet near ski slopes.', 'Park City, UT', 190.00, '2025-01-19 10:00:00', '2025-01-19 10:00:00'),
('uuid20', 'uuid4', 'Desert Retreat', 'Unique retreat in the desert.', 'Tucson, AZ', 130.00, '2025-01-20 10:00:00', '2025-01-20 10:00:00'),
('uuid21', 'uuid7', 'Historic Townhouse', 'Charming townhouse in historic district.', 'Boston, MA', 170.00, '2025-01-21 10:00:00', '2025-01-21 10:00:00'),
('uuid22', 'uuid3', 'Penthouse Suite', 'Luxury penthouse with city views.', 'Los Angeles, CA', 300.00, '2025-01-22 10:00:00', '2025-01-22 10:00:00'),
('uuid23', 'uuid4', 'Forest Cabin', 'Secluded cabin in the woods.', 'Portland, OR', 140.00, '2025-01-23 10:00:00', '2025-01-23 10:00:00'),
('uuid24', 'uuid7', 'Riverside Cottage', 'Quaint cottage by the river.', 'Asheville, NC', 100.00, '2025-01-24 10:00:00', '2025-01-24 10:00:00'),
('uuid25', 'uuid3', 'Luxury Villa', 'Spacious villa with private pool.', 'Miami, FL', 350.00, '2025-01-25 10:00:00', '2025-01-25 10:00:00');

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('uuid26', 'uuid11', 'uuid1', '2025-02-01', '2025-02-03', 240.00, 'confirmed', '2025-01-26 10:00:00'), -- 2 nights
('uuid27', 'uuid12', 'uuid2', '2025-02-05', '2025-02-08', 600.00, 'pending', '2025-01-27 10:00:00'), -- 3 nights
('uuid28', 'uuid13', 'uuid5', '2025-02-10', '2025-02-12', 300.00, 'confirmed', '2025-01-28 10:00:00'), -- 2 nights
('uuid29', 'uuid14', 'uuid8', '2025-02-15', '2025-02-17', 180.00, 'canceled', '2025-01-29 10:00:00'), -- 2 nights
('uuid30', 'uuid15', 'uuid1', '2025-02-20', '2025-02-23', 540.00, 'confirmed', '2025-01-30 10:00:00'), -- 3 nights
('uuid31', 'uuid16', 'uuid2', '2025-02-25', '2025-02-27', 220.00, 'pending', '2025-01-31 10:00:00'), -- 2 nights
('uuid32', 'uuid17', 'uuid5', '2025-03-01', '2025-03-04', 750.00, 'confirmed', '2025-02-01 10:00:00'), -- 3 nights
('uuid33', 'uuid18', 'uuid8', '2025-03-05', '2025-03-07', 440.00, 'confirmed', '2025-02-02 10:00:00'), -- 2 nights
('uuid34', 'uuid19', 'uuid1', '2025-03-10', '2025-03-12', 380.00, 'canceled', '2025-02-03 10:00:00'), -- 2 nights
('uuid35', 'uuid20', 'uuid2', '2025-03-15', '2025-03-18', 390.00, 'confirmed', '2025-02-04 10:00:00'), -- 3 nights
('uuid36', 'uuid21', 'uuid5', '2025-03-20', '2025-03-22', 340.00, 'pending', '2025-02-05 10:00:00', '2025-02-05 10:00:00'), -- 2 nights
('uuid37', 'uuid22', 'uuid8', '2025-03-25', '2025-03-28', 900.00, 'confirmed', '2025-02-06 10:00:00'), -- 3 nights
('uuid38', 'uuid23', 'uuid1', '2025-04-01', '2025-04-03', 280.00, 'confirmed', '2025-02-07 10:00:00'), -- 2 nights
('uuid39', 'uuid24', 'uuid2', '2025-04-05', '2025-04-07', 200.00, 'pending', '2025-02-08 10:00:00'), -- 2 nights
('uuid40', 'uuid25', 'uuid5', '2025-04-10', '2025-04-13', 1050.00, 'confirmed', '2025-02-09 10:00:00'); -- 3 nights


INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('uuid41', 'uuid26', 240.00, '2025-01-26 12:00:00', 'credit_card'),
('uuid42', 'uuid28', 300.00, '2025-01-28 12:00:00', 'paypal'),
('uuid43', 'uuid30', 540.00, '2025-01-30 12:00:00', 'stripe'),
('uuid44', 'uuid32', 750.00, '2025-02-01 12:00:00', 'credit_card'),
('uuid45', 'uuid33', 440.00, '2025-02-02 12:00:00', 'paypal'),
('uuid46', 'uuid35', 390.00, '2025-02-04 12:00:00', 'stripe'),
('uuid47', 'uuid37', 900.00, '2025-02-06 12:00:00', 'credit_card'),
('uuid48', 'uuid38', 280.00, '2025-02-07 12:00:00', 'paypal'),
('uuid49', 'uuid40', 1050.00, '2025-02-09 12:00:00', 'stripe'),
('uuid50', 'uuid26', 50.00, '2025-01-27 12:00:00', 'credit_card'); -- Partial payment for booking uuid26

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('uuid51', 'uuid1', 'uuid3', 'Is the beach cottage available for Feb 1-3?', '2025-01-25 10:00:00'),
('uuid52', 'uuid3', 'uuid1', 'Yes, it’s available! Please book through the platform.', '2025-01-25 11:00:00'),
('uuid53', 'uuid2', 'uuid4', 'Can I check in early on Feb 5?', '2025-01-26 10:00:00'),
('uuid54', 'uuid4', 'uuid2', 'Early check-in is possible, please confirm 24 hours in advance.', '2025-01-26 11:00:00'),
('uuid55', 'uuid5', 'uuid7', 'Does the lake house have a BBQ grill?', '2025-01-27 10:00:00'),
('uuid56', 'uuid7', 'uuid5', 'Yes, there’s a grill on the patio.', '2025-01-27 11:00:00'),
('uuid57', 'uuid8', 'uuid3', 'Can you send me more photos of the ski chalet?', '2025-01-28 10:00:00'),
('uuid58', 'uuid3', 'uuid8', 'I’ve sent you some photos via email.', '2025-01-28 11:00:00'),
('uuid59', 'uuid1', 'uuid6', 'I had an issue with my booking, can you help?', '2025-01-29 10:00:00'),
('uuid60', 'uuid6', 'uuid1', 'Please provide your booking ID, and I’ll look into it.', '2025-01-29 11:00:00');
