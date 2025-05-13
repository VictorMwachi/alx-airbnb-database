SELECT * FROM Properties WHERE property_id in (SELECT property_id FROM Reviews GROUP BY property_id HAVING AVG(rating)>4.0);
SELECT * FROM User WHERE user_id IN (SELECT user_id FROM Booking GROUP BY user_id HAVING COUNT(*)>3)
