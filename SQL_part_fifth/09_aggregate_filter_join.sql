-- SELECT ROUND(AVG(amount_tipped), 4) FROM bookings
-- WHERE amount_billed > 20 AND num_guests > 2;

-- SELECT MAX(b.num_guests), MAX(t.num_seats) 
-- FROM bookings AS b
-- LEFT JOIN tables AS t ON b.table_id = t.id;

-- SELECT MAX(b.num_guests), MAX(t.num_seats), p.name 
-- FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id
-- INNER JOIN payment_methods AS p on b.payment_id = p.id
-- WHERE t.num_seats < 5 AND p.name = 'Cash';

SELECT SUM(b.num_guests) AS num_guests
FROM bookings AS b
GROUP BY b.booking_date;