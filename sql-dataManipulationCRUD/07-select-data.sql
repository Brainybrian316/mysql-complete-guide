SELECT 
date_created,
customer_name,
product_name,
volume
FROM sales;

-- -- !alias
-- SELECT 
-- date_created,
-- customer_name,
-- product_name,
-- volume AS total_sales
-- FROM sales;

-- -- !expressions
-- SELECT 
-- date_created,
-- customer_name,
-- product_name,
-- volume / 100 AS total_sales
-- FROM sales;