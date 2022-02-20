SELECT booking_date, COUNT(booking_date)
FROM bookings
Group BY booking_date
HAVING SUM(amount_billed) > 30;

