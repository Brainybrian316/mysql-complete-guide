-- SELECT * FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;

-- SELECT 
-- e.id AS employee_id,
-- e.first_name,
-- e.last_name,
-- p.title 
-- FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p on pe.project_id = p.id;

-- SELECT * FROM employees AS e
-- INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
-- INNER JOIN projects AS p ON pe.project_id = p.id;

-- SELECT 
-- e.id AS employee_id,
-- e.first_name,
-- e.last_name,
-- p.title 
-- FROM employees AS e
-- INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p on pe.project_id = p.id ORDER BY first_name;

-- SELECT * FROM teams;

-- SELECT
-- e.id AS employee_id,
-- e.first_name,
-- e.last_name,
-- t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;

-- @TASK: which employess are in building number 3
-- *MY SOLUTION
-- SELECT * FROM company_buildings;

-- SELECT 
-- e.id AS employee_id,
-- e.first_name,
-- e.last_name,
-- t.name,
-- c.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- INNER JOIN company_buildings AS c ON t.id = c.id
-- WHERE c.id = 3;

-- *CORRECT SOLUTION
-- SELECT 
-- e.id AS employee_id,
-- e.first_name,
-- e.last_name,
-- b.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- INNER JOIN company_buildings AS b ON t.building_id = b.id
-- WHERE b.id = 3
-- ORDER BY e.birthdate;