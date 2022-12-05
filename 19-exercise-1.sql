-- ! create a database
-- CREATE DATABASE online_shop;

-- ! create and configure table
-- CREATE TABLE products (
--   name VARCHAR(200),
--   --guranteed value is stored exactly  ex: 8.99 or 1234.99
--   price NUMERIC(10, 2), 
--   description TEXT,
--   amount_in_stock SMALLINT,
--   image_path VARCHAR(500)
-- );


-- ! insert dummy data
-- INSERT INTO products (price, name, description, amount_in_stock, image_path)
-- VALUES(
--   12.99,
--   'A Book',
--   'This is a book - and this text could be way longer!',
--   39,
--   'uploads/images/products/a-book.jpg'
--   );

-- ! add constraints mysql
-- ALTER TABLE products 
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock SMALLINT CHECK(amount_in_stock >= 0);

-- *postgres constraints
-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);

-- ! add id column
-- ALTER TABLE products
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;

-- *postgress id column
ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY;
