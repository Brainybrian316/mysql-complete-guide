-- *all
-- SELECT * FROM employees;
--  *inner join
-- SELECT * FROM employees AS e1
-- INNER JOIN employees AS e2 
-- ON e1.supervisor_id = e2.id;
-- *left join
-- SELECT * FROM employees AS e1
-- LEFT JOIN employees AS e2 
-- ON e1.supervisor_id = e2.id;
-- *specific data
-- SELECT e.id AS employee_id,
--   e.first_name,
--   e.last_name,
--   e.supervisor_id,
--   e2.first_name AS supervisor_name
-- FROM employees AS e
--   INNER JOIN employees AS e2 ON e.supervisor_id = e2.id;
-- *specific left join
SELECT e.id AS employee_id,
  e.first_name,
  e.last_name,
  e.supervisor_id,
  e2.first_name AS supervisor_name
FROM employees AS e
  LEFT JOIN employees AS e2 ON e.supervisor_id = e2.id;