-- -- *postgres working with dates
-- SELECT membership_start + 7,
--   membership_start
-- FROM memberships;
-- -- !mysql date_add and sub func works with month and years too
-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY),
--   membership_start
-- FROM memberships;
-- *posgres working with dates for month or year
SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE,
  membership_start
FROM memberships;