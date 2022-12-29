CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  -- id SERIAL PRIMARY KEY, --postgres
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
-- id SERIAL PRIMARY KEY, -- postgres
name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  -- id SERIAL PRIMARY KEY, --postgres
  name VARCHAR(300) NOT NULL,
  building_id INT,
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL -- mysql 
  -- building_id INT REFERENCES company_buildings (id) ON DELETE SET NULL -- postgres
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  -- id SERIAL PRIMARY KEY, --postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE CASCADE
  -- team_id INT DEFAULT 1 REFERENCES teams (id) ON DELETE SET DEFAULT -- postgres
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  -- id SERIAL PRIMARY KEY, --postgres
  email VARCHAR(200), --MYSQL
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MYSQL
  -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- postgres
  password VARCHAR(200) NOT NULL
);

-- Intermediate table => n:n
CREATE TABLE projects_employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  -- id SERIAL PRIMARY KEY, --postgres
  employee_id INT, --MYSQL
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE, -- MYSQL
  project_id INT, --mysql
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE -- mysql 
  -- employee_id INT REFERENCES employees ON DELETE CASCADE, -- postgres
  -- project_id INT REFERENCES projects ON DELETE CASCADE  -- posgres
);
