-- SELECT amount_billed,
--     CASE WHEN amount_billed > 30 THEN 'Good day'
--         WHEN amount_billed > 15 THEN 'Normal day'
--         ELSE 'Bad day'
--     END
-- FROM orders;


SELECT weekday_nr,
    CASE WHEN weekday_nr = 0 THEN 'Monday'
         WHEN weekday_nr = 1 THEN 'Tuesday'
         WHEN weekday_nr = 2 THEN 'Wednesday'
         WHEN weekday_nr = 3 THEN 'Thursday'
         WHEN weekday_nr = 4 THEN 'Friday'
         WHEN weekday_nr = 5 THEN 'Saturday'
         ELSE 'Sunday'
    END
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS weekday_nr
    FROM memberships
) AS weekday_nr;

