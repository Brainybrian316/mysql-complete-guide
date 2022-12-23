
CREATE TABLE employees (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  id SERIAL PRIMARY KEY, --postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL
  -- @we did this because the relation should be vice versa so you do not have to delete intranet account manually
  -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE
  --  FOREIGN KEY  (email) REFERENCES intranet_accounts (email) ON DELETE
  -- @@@@@@@
);

CREATE TABLE intranet_accounts (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
  id SERIAL PRIMARY KEY, --postgres
--  email VARCHAR(200), --MYSQL
  -- FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MYSQL
  email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- postgres
  password VARCHAR(200) NOT NULL
);