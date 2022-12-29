--  *will get all data since all users have an address
-- SELECT *
-- FROM users AS u
-- LEFT JOIN addresses AS a ON a.id = u.address_id;

--  *will get all address data and only users that have a relation/match with the address table
-- SELECT *
-- FROM addresses AS a
-- LEFT JOIN users AS u ON a.id = u.address_id
-- LEFT JOIN cities AS c ON c.id = a.city_id;

--  *right and left jolns are same except the values after from...left join is common practice
SELECT *
FROM users AS a
RIGHT JOIN addresses AS a ON a.id = u.address_id
LEFT JOIN cities AS c ON c.id = a.city_id;