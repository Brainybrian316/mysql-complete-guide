-- -- @min nested sub query
-- SELECT MIN(daily_sum)
-- FROM (
--     SELECT booking_date,
--       SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
--   ) AS daily_table;
-- -- @all nested sub query
-- SELECT daily_sum
-- FROM (
--     SELECT booking_date,
--       SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
--   ) AS daily_table;
-- -- @ min nested sub query of booking date
-- SELECT booking_date
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date,
--           SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--       ) AS daily_table
--   );
-- -- @ min nested sub query of booking date with date formatted
-- SELECT DATE_FORMAT(booking_date, '%m-%d-%Y') as booking_date
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date,
--           SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--       ) AS daily_table
--   );
-- -- @min nested queries to get daily sum and daily date together
-- SELECT DATE_FORMAT(booking_date, '%m-%d-%Y') as booking_date,
--   daily_sum
-- FROM (
--     SELECT booking_date,
--       SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
--   ) AS daily_table
-- WHERE daily_sum = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date,
--           SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--       ) AS daily_table
--   );
-- -- @nested sub query but to get all daily sums and all booking dates
-- SELECT DATE_FORMAT(booking_date, '%m-%d-%Y') as booking_date,
--   daily_sum
-- FROM (
--     SELECT booking_date,
--       SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
--   ) AS daily_table