-- -- !postgres
-- CREATE TABLE employees (
--   id SERIAL PRIMARY KEY,
--   first_name VARCHAR(300) NOT NULL,
--   last_name VARCHAR(300) NOT NULL,
--   supervisor_id INT REFERENCES employees ON DELETE
--   SET NULL
-- );
-- *sql
CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  supervisor_id INT,
  FOREIGN KEY (supervisor_id) REFERENCES employees (id) ON DELETE
  SET NULL
);
-- CREATE TABLE teams (
-- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
--   -- id SERIAL PRIMARY KEY, --postgres
--   name VARCHAR(300) NOT NULL,
--   building_id INT,
--   FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL -- mysql 
--   -- building_id INT REFERENCES company_buildings (id) ON DELETE SET NULL -- postgres
-- );