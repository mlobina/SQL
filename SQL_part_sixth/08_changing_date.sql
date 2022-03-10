SELECT DATE_SUB(membership_start, INTERVAL 7 DAY), membership_start
FROM memberships;

SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start
FROM memberships;
