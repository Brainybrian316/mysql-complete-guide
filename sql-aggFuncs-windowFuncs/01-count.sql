-- -- @Count All
--  SELECT COUNT(*)
-- FROM bookings;
-- --  @count booking date
-- SELECT COUNT(booking_date)
-- FROM bookings;
-- --  @count booking amount tipped
-- SELECT COUNT(amount_tipped)
-- FROM bookings;
--  @count booking date distinct
SELECT COUNT(DISTINCT booking_date)
FROM bookings;
-- ______________Notes _______________ --
-- null values ignored
-- distinct looks for unique values to be counted once