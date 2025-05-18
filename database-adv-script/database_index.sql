

CREATE INDEX idx_users_email ON users(email);
-- Email is often used for login/authentication

CREATE INDEX idx_properties_user_id ON properties(user_id);
-- For filtering properties by owner
CREATE INDEX idx_properties_location ON properties(location_city, location_state);
-- For filtering properties by location
CREATE INDEX idx_properties_status ON properties(status);
-- For filtering active/inactive properties
CREATE INDEX idx_properties_price ON properties(price_per_night);
-- For sorting and filtering by price

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
-- For finding bookings by user
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
-- For finding bookings by property
CREATE INDEX idx_bookings_dates ON bookings(check_in_date, check_out_date);
-- For date range queries
CREATE INDEX idx_bookings_status ON bookings(status);
-- For filtering by booking status (confirmed, cancelled, etc.)
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
-- For sorting by booking creation date

-- Performance Measurement
-- ======================

--Query to find all bookings for a specific user Before index:
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

-- After adding index idx_bookings_user_id, the query should show improved performance
-- Expected improvement: Sequential scan → Index scan

-- Query to find properties with bookings in a date range Before index:
EXPLAIN ANALYZE
SELECT p.* 
FROM properties p
JOIN bookings b ON p.id = b.property_id
WHERE b.check_in_date >= '2025-06-01' AND b.check_out_date <= '2025-06-30';

-- After adding indexes, the query should show improved performance
-- Expected improvement: Hash join → Nested loop with index scan

-- Query to find the most booked properties Before index:
EXPLAIN ANALYZE
SELECT p.id, p.name, COUNT(*) as booking_count
FROM properties p
JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY booking_count DESC
LIMIT 10;