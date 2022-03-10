-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT WEEKDAY(last_checkin), last_checkin
-- FROM memberships;

SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;

SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;