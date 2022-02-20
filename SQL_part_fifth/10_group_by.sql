-- SELECT booking_date, SUM(b.num_guests) AS num_guests
-- FROM bookings AS b
-- GROUP BY b.booking_date;

-- SELECT pm.name, booking_date, SUM(b.num_guests)
-- FROM bookings AS b 
-- INNER JOIN payment_methods AS pm ON b.payment_id = pm.id 
-- GROUP BY pm.name, booking_date;

-- SELECT booking_date, COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- Group BY booking_date;

