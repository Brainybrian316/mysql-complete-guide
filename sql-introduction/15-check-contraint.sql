-- create table approach
-- CREATE TABLE users (
--   fullname VARCHAR(300) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0),
--   affects overall table 
  -- CHECK (yearly_salary < max_salary)
-- )

UPDATE users 
SET yearly_salary = NULL 
WHERE full_name = 'Michael Smith';

ALTER TABLE users ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);