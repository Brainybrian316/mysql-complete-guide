-- !mysql for timestamp functionality (difference between two TS)
-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;
-- -- *postgres specific
-- SELECT last_checkout - last_checkin
-- FROM memberships;
-- -- *postgres membership duration in days null means its active still
-- SELECT membership_end - membership_start
-- FROM memberships;
-- -- !mysql membership duration in days 
-- SELECT DATEDIFF(membership_end, membership_start)
-- FROM memberships;
-- !mysql days of active memberships
-- SELECT DATEDIFF(NOW(), membership_start)
-- FROM memberships;
-- *postgres days of active memberships
SELECT NOW() - membership_start
FROM memberships;