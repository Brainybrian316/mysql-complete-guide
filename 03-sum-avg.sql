-- --  @sum 
-- SELECT SUM(amount_billed)
-- FROM bookings;
-- -- @average
-- SELECT AVG(num_guests)
-- FROM bookings;
-- -- @average rounded
-- SELECT ROUND(AVG(num_guests))
-- FROM bookings;
-- @average rounded with decimals
SELECT ROUND(AVG(num_guests), 2)
FROM bookings;
-- ______________Notes _______________ --
-- sum gets the sum of the whole column
--  you can limit decimals and round them