-- SELECT booking_date, SUM(amount_billed) AS daily_sum
-- FROM bookings
-- GROUP by booking_date
-- HAVING daily_sum = (
--     SELECT MIN(daily_sum)
--     FROM (
--       SELECT booking_date, SUM(amount_billed) AS daily_sum
--       FROM bookings
--       GROUP BY booking_date
--     ) AS daily_table
-- );

SELECT booking_date, MIN(daily_sum)
    FROM (
      SELECT booking_date, SUM(amount_billed) AS daily_sum
      FROM bookings
      GROUP BY booking_date
    ) AS daily_table;