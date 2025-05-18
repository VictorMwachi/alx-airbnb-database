CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE User(
  user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  password_hash VARCHAR NOT NULL,
  phone_number VARCHAR NULL,
  role VARCHAR NOT NULL CHECK (role IN('guest','host','admin')),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property(
  property_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  host_id UUID,
  name VARCHAR NOT NULL,
  description TEXT NOT NULL,
  location VARCHAR NOT NULL,
  pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (host_id) REFERENCES User(user_id)
);

CREATE TABLE Booking(
  booking_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id UUID,
  user_id UUID,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL NOT NULL,
  status VARCHAR NOT NULL CHECK status in ('pending', 'confirmed', 'canceled')L,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(user_id) REFERENCES User(user_id),
  FOREIGN KEY(property_id) REFERENCES Property(property_id)
);

CREATE TABLE Payment(
  payment_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  booking_id UUID NOT NULL,
  amount DECIMAL(18,2) NOT NULL,
  payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  payment_method VARCHAR NOT NULL CHECK (payment_method in ('credit_card','paypal', 'stripe')),
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

CREATE TABLE Message(
  message_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL,
  recipient_id UUID NOT NULL,
  message_body TEXT NOT NULL,
  sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(sender_id) REFERENCES User(user_id),
  FOREIGN KEY(recipient_id) REFERENCES User(user_id)
);

CREATE TABLE Review(
  review_id PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id UUID NOT NULL,
  user_id UUID NOT NULL,
  rating INTEGER NOT NULL (CHECK rating (rating >= 1 AND rating <= 5)),
  comment TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(property_id) REFERENCES Property(property_id),
  FOREIGN KEY(user_id) REFERENCES User(user_id)
);

CREATE UNIQUE INDEX idx_email ON User(email);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
CREATE INDEX idx_review_property_id ON Review(property_id);
