SELECT * FROM User INNER JOIN (SELECT user_id,COUNT(*) FROM Booking GROUP BY user_id) bk_cnt ON User.user_id = bk_cnt.user_id;
SELECT COUNT(*) OVER(ORDER BY) FROM Booking GROUP user_id
