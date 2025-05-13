SELECT * FROM Booking INNER JOIN User on Booking.user_id = User.user_id;
SELECT * FROM Property LEFT JOIN Reviews ON Property.property_id = Reviews.property_id ORDER BY proprty_id;
SELECT * FROM Booking FULL OUTER JOIN User on Booking.user_id = User.user_id;
