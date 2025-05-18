(SELECT * FROM Booking WHERE status = 'confirmed') book 
    INNER JOIN 
        User guest ON book.user_id = guest.user_id  AND guest.role='guest'
    INNER JOIN 
        Property prty ON book.property_id = prty.property_id 
    INNER JOIN 
        Payment pmnt ON book.booking_id = pmnt.booking_id

EXPLAIN ANALYZE
SELECT * FROM Booking book 
    INNER JOIN 
        User guest ON book.user_id = guest.user_id 
    INNER JOIN 
        Property prty ON book.property_id = prty.property_id 
    INNER JOIN 
        Payment pmnt ON book.booking_id = pmnt.booking_id;