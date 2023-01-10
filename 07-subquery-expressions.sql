-- -- @checks if certain values are available in the table
-- SELECT EXISTS(
--     SELECT first_name,
--       last_name
--     FROM customers
--     WHERE email = 'manu@test.com'
--   );
-- @using exist as a filter to check data
SELECT o.id
FROM orders AS o
WHERE EXISTS(
    SELECT c.email
    FROM customers AS c
    WHERE o.customer_id = c.id
      AND c.email = 'max@test.com'
  );