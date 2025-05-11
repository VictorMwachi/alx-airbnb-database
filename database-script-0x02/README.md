# Airbnb Sample Data Seeder

This file contains SQL `INSERT` statements to seed the Airbnb-like database with sample data for the following tables:

- **User**
- **Property**
- **Booking**
- **Payment**
- **Message**

### Files

- `seed.sql`: SQL script with realistic example data.
- `README.md`: This documentation file.

### How to Run

1. Connect to your PostgreSQL database.
2. Run the script:

```bash
psql -U your_user -d your_database -f seed.sql

