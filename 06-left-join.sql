--  *will get all data since all users have an address
-- SELECT *
-- FROM users AS u
-- LEFT JOIN addresses AS a ON a.id = u.address_id;

--  *will get all address data and only users that have a relation/match with the address table
SELECT *
FROM addresses AS a
LEFT JOIN users AS u ON a.id = u.address_id;