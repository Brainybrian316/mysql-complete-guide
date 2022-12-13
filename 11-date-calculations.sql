
-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <=5;

-- *alternatives

-- if you used timestamps you can compare via timestamps as shown beliow
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;