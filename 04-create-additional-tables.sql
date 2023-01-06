-- -- !mysql
-- CREATE TABLE customers(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   first_name VARCHAR(200),
--   last_name VARCHAR(200),
--   email VARCHAR(200)
-- );
-- -- !mysql
-- CREATE TABLE orders(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   amount_billed NUMERIC(5, 2),
--   customer_id INT,
--   FOREIGN KEY (customer_id) REFERENCES customers (id)
-- );
-- -- *postgres
-- CREATE TABLE customers(
--   id SERIAL PRIMARY KEY,
--   first_name VARCHAR(200),
--   last_name VARCHAR(200),
--   email VARCHAR(200)
-- );
-- -- *postgres
-- CREATE TABLE orders(
--   id SERIAL PRIMARY KEY,
--   amount_billed NUMERIC(5, 2),
--   customer_id INT REFERENCES customers
-- );