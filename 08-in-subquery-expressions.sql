-- -- @normal filter using inner join
-- SELECT c.email
-- FROM customers AS c
--   INNER JOIN orders AS o ON c.id = o.customer_id;
-- -- @filtering with OR for a list of results
-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max'
--   OR first_name = 'Manu';
-- -- @filtering with IN for a list of results
-- SELECT id
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');
-- -- @filtering with NOT IN for a list of results without those values
-- SELECT id
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');
-- @filtering with IN via a subquery
SELECT email
FROM customers
WHERE id IN(
    SELECT customer_id
    FROM orders
  );