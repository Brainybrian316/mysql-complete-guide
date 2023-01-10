-- -- @ max true
-- SELECT first_name LIKE 'Max',
--   first_name
-- FROM memberships;
-- -- @a character before with a and chracters after
-- SELECT first_name LIKE '_a%',
--   first_name
-- FROM memberships;
-- -- @characters with an o and characters before or after
-- SELECT first_name LIKE '%o%',
--   first_name
-- FROM memberships;
-- -- @character with one character before and after with a
-- SELECT first_name LIKE '_a_',
--   first_name
-- FROM memberships;
-- @pattern matching for specific query results
SELECT first_name
FROM memberships
WHERE first_name LIKE 'J____' -- __________NOTES______________
  -- using _ indicates a character
  --  using % indicates we are unsure what is there
  --  specifying chracters finds exact matches
  -- case sensitive
  -- adding i to the like deactives case sensitivity
  --  in mysql 'like' is not case sensitive