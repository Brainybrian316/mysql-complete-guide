-- -- sets team column building_id to null
-- DELETE FROM company_buildings
-- WHERE id = 2;

-- -- sets employees team_id column to default of 1 (admin)
-- DELETE FROM teams
-- WHERE id = 2;

-- -- sets intermediate table to not have an employee id of one anymore since employee with id 1 is deleted
-- DELETE FROM employees
-- WHERE id = 1;