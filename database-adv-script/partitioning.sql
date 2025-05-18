-- Step 1: Create a new partitioned table
CREATE TABLE booking_partitioned (
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    guests INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for different date ranges
-- Each partition covers a quarter of a year
-- Adjust the partition ranges based on your data distribution
CREATE TABLE booking_q1_2024 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE booking_q2_2024 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE booking_q3_2024 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE booking_q4_2024 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

CREATE TABLE booking_q1_2025 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE booking_q2_2025 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

CREATE TABLE booking_q3_2025 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');

CREATE TABLE booking_q4_2025 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');

-- Step 3: Create a partition for historical data
CREATE TABLE booking_historical PARTITION OF booking_partitioned
    FOR VALUES FROM (MINVALUE) TO ('2024-01-01');

-- Step 4: Create a partition for future data
CREATE TABLE booking_future PARTITION OF booking_partitioned
    FOR VALUES FROM ('2026-01-01') TO (MAXVALUE);

-- Step 5: Create necessary indexes on each partition
-- Primary key
ALTER TABLE booking_partitioned ADD PRIMARY KEY (booking_id, start_date);

-- Foreign keys and common query fields
CREATE INDEX idx_booking_part_user_id ON booking_partitioned (user_id);
CREATE INDEX idx_booking_part_property_id ON booking_partitioned (property_id);
CREATE INDEX idx_booking_part_status ON booking_partitioned (status);
CREATE INDEX idx_booking_part_date_range ON booking_partitioned (start_date, end_date);
CREATE INDEX idx_booking_part_created_at ON booking_partitioned (created_at);

-- Step 6: Migrate data from the original table to the partitioned table
INSERT INTO booking_partitioned 
SELECT * FROM booking;
