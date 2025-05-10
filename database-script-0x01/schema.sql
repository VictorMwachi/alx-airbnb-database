CREATE TABLE User(
user_id UUID PRIMARY KEY,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR UNIQUE NOT NULL,
password_hash VARCHAR NOT NULL,
phone_number VARCHAR NULL,
role CHECK (role IN('guest','host','admin')) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property(
property_id UUID Primary Key,
  host_id UUID,
name VARCHAR NOT NULL,
description TEXT NOT NULL,
  location VARCHAR NOT NULL,
pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (host_id) REFERENCES "User"(user_id)
);

CREATE TABLE Booking(
booking_id UUID Primary Key,
property_id UUID,
user_id UUID,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_price DECIMAL NOT NULL,
status CHECK status in ('pending', 'confirmed', 'canceled') NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY REFERENCES User(user_id),
FOREIGN KEY REFERENCES Property(property_id)
);

