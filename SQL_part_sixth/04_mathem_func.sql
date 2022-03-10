-- SELECT SUM(price * billing_frequency) AS total_revenue
-- FROM memberships;

-- SELECT CEIL(consumption)
-- FROM memberships;

-- SELECT FLOOR(consumption)
-- FROM memberships;

-- SELECT ROUND(consumption, 2)
-- FROM memberships;

SELECT TRUNCATE(consumption, 1)
FROM memberships;



