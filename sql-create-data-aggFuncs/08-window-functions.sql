-- -- @window functions all get sum
-- SELECT booking_date,
--   amount_tipped,
--   SUM(amount_tipped) OVER()
-- FROM bookings;
-- -- @window functions another approach diff group by group same sum
-- SELECT booking_date,
--   amount_tipped,
--   SUM(amount_tipped) OVER(PARTITION BY booking_date) AS daily_total
-- FROM bookings;
-- -- @window functions order by changes calculation execution
-- SELECT DATE_FORMAT(booking_date, '%m-%d-%Y'),
--   amount_tipped,
--   SUM(amount_tipped) OVER(
--     PARTITION BY booking_date
--     ORDER BY amount_billed
--   ) AS daily_total
-- FROM bookings;
-- @window functions order by rank function
SELECT DATE_FORMAT(booking_date, '%m-%d-%Y'),
  amount_tipped,
  RANK() OVER(
    PARTITION BY booking_date
    ORDER BY amount_tipped DESC
  ) AS daily_total
FROM bookings;