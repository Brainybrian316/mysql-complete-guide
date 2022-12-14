CREATE TABLE company_buildings (
id SERIAL PRIMARY KEY, -- postgres
name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY, --postgres
  name VARCHAR(300) NOT NULL,
  building_id INT REFERENCES company_buildings (id) ON DELETE SET NULL
);

CREATE TABLE employees (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  id SERIAL PRIMARY KEY, --postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1 REFERENCES teams (id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  id SERIAL PRIMARY KEY, --postgres
--  email VARCHAR(200), --MYSQL
  -- FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MYSQL
  email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- postgres
  password VARCHAR(200) NOT NULL
);