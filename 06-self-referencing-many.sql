-- --  *postgres
-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY,
--   first_name VARCHAR(300) NOT NULL
-- );
-- --  *postgres
-- CREATE TABLE users_friends (
--   user_id INT REFERENCES users ON DELETE CASCADE,
--   friend_id INT REFERENCES users ON DELETE CASCADE,
--   -- This ensures that there won't be duplicates and that user_id is always less than the friends id EX: 1 & 2... we wont see a 2 & 1 as its the same with this check
--   CHECK (user_id < friend_id),
--   --  this is a composite key
--   PRIMARY KEY (user_id, friend_id)
-- );
--  !mysql
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL
);
--  !mysql
CREATE TABLE users_friends (
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  friend_id INT,
  FOREIGN KEY (friend_id) REFERENCES users (id) ON DELETE CASCADE,
  CHECK (user_id < friend_id),
  PRIMARY KEY (user_id, friend_id)
);