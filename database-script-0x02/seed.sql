-- Clear existing data (if any)
DELETE FROM Message;
DELETE FROM Payment;
DELETE FROM Booking;
DELETE FROM Property;
DELETE FROM User;

-- Insert Users (20 sample users with different roles: guests, hosts, and admins)
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'John', 'Smith', 'john.smith@email.com', '$2a$10$Xe8CXj0zrLOJQV.H.5Qe6eMrUuU8TX3fgRPOYzlgTn1b5qW1FHUXS', '+1-555-123-4567', 'guest', '2023-01-15T08:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Emma', 'Johnson', 'emma.johnson@email.com', '$2a$10$kzFBk.1MO6YYA.UOPVFL4uS9J74cQSFP3URVOILqqgL9MU/BO2kgK', '+1-555-234-5678', 'host', '2023-01-18T14:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Michael', 'Williams', 'michael.williams@email.com', '$2a$10$qw6yfvVdZvmWB4Pu3QU1B.V0yA0FXZoLRFgNJ1.R3rW5f7xDxkPYO', '+1-555-345-6789', 'guest', '2023-01-22T11:20:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Olivia', 'Brown', 'olivia.brown@email.com', '$2a$10$F7zX.wCH6EB3zovO9Ypzj.ZuueLEWb2WqwXnRAHiLFmvIhG1jQsyu', '+1-555-456-7890', 'host', '2023-01-25T09:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'William', 'Jones', 'william.jones@email.com', '$2a$10$2OZMrWgA6Y.3.xGW.7.U3Odaur.QI3wQjQZGy92d8L4vYRQFiPFYC', '+1-555-567-8901', 'guest', '2023-02-01T16:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Sophia', 'Garcia', 'sophia.garcia@email.com', '$2a$10$qo6Ns8VHgKSKPFE1G.mX/eS1K.CkFJI6gR/aR/9YWVpKOF3FS2tXi', '+1-555-678-9012', 'host', '2023-02-05T13:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'James', 'Miller', 'james.miller@email.com', '$2a$10$K9F1Lsr5uDX3MfCVHqo.Zu7S/m8x9mWtkZ3PQiVUqt.KUbAqO5xE2', '+1-555-789-0123', 'guest', '2023-02-10T10:20:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'Charlotte', 'Davis', 'charlotte.davis@email.com', '$2a$10$8jRMKVhw4RpQD/OScVq6e.QW18KJaH1ysMCJcEVEfGFdwVUJvxAme', '+1-555-890-1234', 'admin', '2023-02-15T09:10:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'Benjamin', 'Rodriguez', 'benjamin.rodriguez@email.com', '$2a$10$WMF0WLWoTRxn0aQRLBOPKuIz.jnJbr.y1FLMvgR3NE6/QKTQeoXwO', '+1-555-901-2345', 'host', '2023-02-18T11:25:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'Mia', 'Martinez', 'mia.martinez@email.com', '$2a$10$b09u1RQO2aNHOmjrpZM4feNg2Aio9T9n7HMdq1Qe.YE9.kszEHRQ6', '+1-555-012-3456', 'guest', '2023-02-22T15:40:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Ethan', 'Hernandez', 'ethan.hernandez@email.com', '$2a$10$3r9q.3EZQ1sXv3EEDsUDleNpJbmz0g90kUVH9nPSpXy4fT7wO62b2', '+1-555-123-7890', 'host', '2023-03-01T14:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'Amelia', 'Lopez', 'amelia.lopez@email.com', '$2a$10$mN5EWa.NEDAFTtHWE1nIWucHLFwQ9J7j5s5nFzWF9lhHLkRRCekT2', '+1-555-234-8901', 'guest', '2023-03-05T10:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'Alexander', 'Gonzalez', 'alex.gonzalez@email.com', '$2a$10$bDFFwxPpQGvPFL5/AptmmeXNx2b/jnAjUf3y//q.5cWo2tGVX2yNO', '+1-555-345-9012', 'admin', '2023-03-10T09:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'Isabella', 'Wilson', 'isabella.wilson@email.com', '$2a$10$JSUYk4fH0IQLYFiNQoMGsO9r3B1yp9yDJlM5RfojVeL12T5JGOvQW', '+1-555-456-0123', 'host', '2023-03-15T13:20:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'Daniel', 'Taylor', 'daniel.taylor@email.com', '$2a$10$K/LBq/bDlwBJbJ.3L0P5xuiSdWkPNYH2YSVLUFu66Kj1ql8/YYtx.', '+1-555-567-1234', 'guest', '2023-03-20T16:55:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'Harper', 'Anderson', 'harper.anderson@email.com', '$2a$10$NqBPU6tU0e8X.7TDtH7c9eLaJAZ8Sjnw.zjbIg1BNQQzez6hQCCvK', '+1-555-678-2345', 'host', '2023-03-25T14:40:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'Matthew', 'Thomas', 'matthew.thomas@email.com', '$2a$10$TtgAlRe5qnvxwepfFQytMOxQcf16kfkNV.Jx/jEDFNiHN4RUmHSaW', '+1-555-789-3456', 'guest', '2023-04-01T11:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'Abigail', 'Jackson', 'abigail.jackson@email.com', '$2a$10$JfCPCJqDq9QD00pQOSJC8esQnJehKp1hdhbJ.bg.ywZ.E0zXHXOVi', '+1-555-890-4567', 'host', '2023-04-05T10:25:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'David', 'White', 'david.white@email.com', '$2a$10$W0FTFpXk43.5TUQsvPZa0.rOVZQH9ufHPb5OFVkH0HE2Ht6EexrCm', '+1-555-901-5678', 'guest', '2023-04-10T17:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'Elizabeth', 'Harris', 'elizabeth.harris@email.com', '$2a$10$XZRvFgZ9jR6z7i9pKqTq4uN.BwKPR5KyHoS1I5FUtVMmWcUwx62VS', '+1-555-012-6789', 'admin', '2023-04-15T12:50:00');

-- Insert Properties (15 sample properties)
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Beachfront Villa', 'Luxurious villa with direct beach access and panoramic ocean views. Features include a private pool, outdoor dining area, and modern amenities.', 'Malibu, California', 450.00, '2023-05-10T09:30:00', '2023-05-10T09:30:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Urban Loft', 'Modern loft apartment in the heart of downtown with floor-to-ceiling windows, contemporary furnishings, and a rooftop terrace.', 'New York City, New York', 275.00, '2023-05-12T14:45:00', '2023-05-12T14:45:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Mountain Retreat', 'Cozy cabin nestled in the mountains with stunning views, fireplace, hot tub, and hiking trails nearby.', 'Aspen, Colorado', 325.00, '2023-05-15T11:20:00', '2023-05-15T11:20:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'Historic Townhouse', 'Charming townhouse in a historic district with original architecture, updated amenities, and a private garden.', 'Charleston, South Carolina', 220.00, '2023-05-18T16:35:00', '2023-05-18T16:35:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Lakefront Cottage', 'Serene cottage on the lake with a private dock, canoe, and outdoor fire pit. Perfect for a relaxing getaway.', 'Lake Tahoe, Nevada', 280.00, '2023-05-20T10:15:00', '2023-05-20T10:15:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Desert Oasis', 'Modern home in the desert with a private pool, outdoor shower, and stunning desert landscape views.', 'Palm Springs, California', 295.00, '2023-05-22T15:40:00', '2023-05-22T15:40:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'City Penthouse', 'Luxury penthouse apartment with panoramic city views, high-end furnishings, and a private balcony.', 'Chicago, Illinois', 385.00, '2023-05-25T13:25:00', '2023-05-25T13:25:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Vineyard Estate', 'Elegant home on a working vineyard with wine tasting, gourmet kitchen, and picturesque countryside views.', 'Napa Valley, California', 420.00, '2023-05-28T12:10:00', '2023-05-28T12:10:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'Tropical Bungalow', 'Charming bungalow surrounded by tropical gardens with an outdoor shower, hammock, and short walk to the beach.', 'Kauai, Hawaii', 235.00, '2023-06-01T09:55:00', '2023-06-01T09:55:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'Ski Chalet', 'Spacious ski chalet with direct access to slopes, sauna, fireplace, and mountain views.', 'Park City, Utah', 375.00, '2023-06-05T14:30:00', '2023-06-05T14:30:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'Historic Farmhouse', 'Lovingly restored farmhouse on acres of land with original features, modern amenities, and organic garden.', 'Hudson Valley, New York', 195.00, '2023-06-08T11:45:00', '2023-06-08T11:45:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'Seaside Cottage', 'Cozy cottage just steps from the beach with ocean views, beach access, and nautical-inspired decor.', 'Cape Cod, Massachusetts', 245.00, '2023-06-10T16:20:00', '2023-06-10T16:20:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'Modern Ranch', 'Sleek, contemporary ranch home with a pool, outdoor kitchen, and sweeping country views.', 'Austin, Texas', 310.00, '2023-06-15T10:05:00', '2023-06-15T10:05:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'Forest Treehouse', 'Unique treehouse experience with luxury comforts, surrounded by forest with hiking trails nearby.', 'Portland, Oregon', 265.00, '2023-06-18T13:15:00', '2023-06-18T13:15:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'Riverside Cabin', 'Peaceful cabin on the riverbank with fishing access, fire pit, and rustic charm with modern conveniences.', 'Asheville, North Carolina', 185.00, '2023-06-20T15:50:00', '2023-06-20T15:50:00');

-- Insert Bookings (30 sample bookings with different statuses)
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2023-07-10', '2023-07-15', 2250.00, 'confirmed', '2023-06-01T10:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', '2023-07-12', '2023-07-16', 1100.00, 'confirmed', '2023-06-02T14:15:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2023-07-15', '2023-07-20', 1625.00, 'confirmed', '2023-06-03T09:45:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', '2023-07-18', '2023-07-22', 880.00, 'confirmed', '2023-06-04T11:20:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', '2023-07-20', '2023-07-25', 1400.00, 'confirmed', '2023-06-05T16:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', '2023-07-22', '2023-07-26', 1180.00, 'canceled', '2023-06-06T13:45:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', '2023-07-25', '2023-07-30', 1925.00, 'confirmed', '2023-06-07T10:15:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', '2023-07-28', '2023-08-02', 2100.00, 'pending', '2023-06-08T15:40:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', '2023-08-01', '2023-08-05', 940.00, 'confirmed', '2023-06-09T12:25:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2023-08-05', '2023-08-10', 1875.00, 'confirmed', '2023-06-10T09:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', '2023-08-08', '2023-08-12', 780.00, 'confirmed', '2023-06-11T14:50:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2023-08-12', '2023-08-16', 980.00, 'pending', '2023-06-12T11:35:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', '2023-08-15', '2023-08-20', 1550.00, 'confirmed', '2023-06-13T16:20:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', '2023-08-18', '2023-08-22', 1060.00, 'canceled', '2023-06-14T13:10:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', '2023-08-22', '2023-08-26', 740.00, 'confirmed', '2023-06-15T10:45:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', '2023-08-26', '2023-08-31', 2250.00, 'confirmed', '2023-06-16T15:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', '2023-09-01', '2023-09-05', 1100.00, 'pending', '2023-06-17T12:15:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', '2023-09-05', '2023-09-10', 1625.00, 'confirmed', '2023-06-18T09:40:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2023-09-10', '2023-09-14', 880.00, 'confirmed', '2023-06-19T14:25:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', '2023-09-15', '2023-09-20', 1400.00, 'confirmed', '2023-06-20T11:10:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2023-09-18', '2023-09-22', 1180.00, 'canceled', '2023-06-21T16:55:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', '2023-09-22', '2023-09-27', 1925.00, 'confirmed', '2023-06-22T13:40:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', '2023-09-25', '2023-09-30', 2100.00, 'pending', '2023-06-23T10:25:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', '2023-10-01', '2023-10-05', 940.00, 'confirmed', '2023-06-24T15:10:00'),
