-- @where agg func
SELECT booking_date,
  COUNT(booking_date)
FROM bookings
WHERE amount_billed > 30
GROUP BY booking_date;
-- @having agg func
SELECT booking_date,
  COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;
-- ______________Notes _______________ --
--  'where' applies directly after 'from ' means filter condition before any agg func takes place
-- select data from table and filter data according to criteria then apply agg func
-- the first sttement shows 4 entries on the 5th of november where the amount exceeds 30
--  cannot use where after 'group by'
--  cannot use agg funcs in a 'where' statement since where is based off of unagg data
--  having for nov. 5th shows 5 entries because  it applies the agg func after 'group by'
--  'where' based on what you see use 'where'
--  'having' based on agg. data use 'having'
-- The first query uses the WHERE clause to filter the rows before the grouping and aggregation is performed. The second query uses the HAVING clause to filter the groups after the grouping and aggregation is performed.
-- The WHERE clause is used to filter rows based on conditions that refer to individual rows. The HAVING clause is used to filter groups based on conditions that refer to the values within a group.
-- The WHERE clause is used to filter rows before the GROUP BY clause is applied. The HAVING clause is used to filter groups after the GROUP BY clause is applied.