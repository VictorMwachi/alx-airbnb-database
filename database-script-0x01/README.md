# Airbnb Schema DDL

This file contains SQL `DDL statements to seed the Airbnb-like database with scrips for the following tables:

- **User**
- **Property**
- **Booking**
- **Payment**
- **Message**



### How to Run

1. Connect to your PostgreSQL database.
2. Run the script:

```bash
psql -U your_user -d your_database -f seed.sql
