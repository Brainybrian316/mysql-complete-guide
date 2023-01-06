-- -- @extract func by month
-- SELECT EXTRACT(
--     MONTH
--     FROM last_checkin
--   ),
--   DATE_FORMAT(last_checkin, '%m-%d-%Y')
-- FROM memberships;
-- -- @extract func by day
-- SELECT EXTRACT(
--     DAY
--     FROM last_checkin
--   ),
--   DATE_FORMAT(last_checkin, '%m-%d-%Y')
-- FROM memberships;
-- -- @extract func by year
-- SELECT EXTRACT(
--     YEAR
--     FROM last_checkin
--   ),
--   DATE_FORMAT(last_checkin, '%m-%d-%Y')
-- FROM memberships;
-- -- *postgres specific weekday by number  SUNDAY IS 0
-- SELECT EXTRACT(
--     DOW
--     FROM last_checkin
--   ),
--   last_checkin
-- FROM memberships;
-- -- *postgres specific weekday by number SUNDAY IS 7
-- SELECT EXTRACT(
--     ISODOW
--     FROM last_checkin
--   ),
--   last_checkin
-- FROM memberships;
-- -- !mysql specific  SUNDAY IS 6
-- SELECT WEEKDAY(last_checkin),
--   DATE_FORMAT(last_checkin, '%m-%d-%Y')
-- FROM memberships;
-- -- !mysql specific  SUNDAY IS 7
-- SELECT WEEKDAY(last_checkin) + 1,
--   DATE_FORMAT(last_checkin, '%m-%d-%Y')
-- FROM memberships;
-- --  !mysql specific CONVERT
-- SELECT CONVERT(last_checkin, DATE),
--   CONVERT(last_checkin, TIME)
-- FROM memberships;
-- --  !mysql specific CONVERT
-- SELECT DATE_FORMAT(CONVERT(last_checkin, DATE), '%m/%d/%Y') as checkin_date,
--   DATE_FORMAT(CONVERT(last_checkin, TIME), '%h:%i:%s') as checkin_time
-- FROM memberships;
-- *postgres specific
SELECT last_checkin::TIMESTAMP::DATE AS checkin_date,
  last_checkin::TIMESTAMP::TIME AS checkin_time
FROM memberships;