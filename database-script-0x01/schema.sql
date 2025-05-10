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

