-- -- @CASE keyword
-- SELECT amount_billed,
--   CASE
--     WHEN amount_billed > 30 THEN 'Good Day'
--     WHEN amount_billed > 15 THEN 'Normal Day'
--     ELSE 'Bad Day'
--   END
-- FROM orders;
-- -- @CASE keyword with more specificity 
-- SELECT amount_billed,
--   CASE
--     WHEN amount_billed > 15
--     AND amount_billed <= 30 THEN 'Normal Day'
--     WHEN amount_billed > 30 THEN 'Good Day'
--     ELSE 'Bad Day'
--   END
-- FROM orders;
-- !CASE with subquery mysql
SELECT weekday_number,
  CASE
    WHEN weekday_number = 1 THEN 'Monday'
    WHEN weekday_number = 2 THEN 'Tuesday'
    WHEN weekday_number = 3 THEN 'Wednesday'
    WHEN weekday_number = 4 THEN 'Thursday'
    WHEN weekday_number = 5 THEN 'Friday'
    WHEN weekday_number = 6 THEN 'Saturday'
    ELSE 'Sunday'
  END
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS weekday_number
    FROM memberships
  ) AS weekday_numbers;