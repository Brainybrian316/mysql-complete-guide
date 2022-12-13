-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;

-- *asc order
-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;

-- *can use where
-- SELECT * FROM sales
-- WHERE is_disputed = FALSE
-- ORDER BY volume DESC
-- LIMIT 3;


-- *can run multiple orders
-- SELECT * FROM sales
-- WHERE is_disputed = FALSE
-- ORDER BY volume DESC, customer_name
-- LIMIT 3;