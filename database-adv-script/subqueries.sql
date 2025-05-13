SELECT * FROM Properties WHERE property_id in (SELECT property_id FROM Reviews GROUP BY property_id having AVG(rating)>4);
