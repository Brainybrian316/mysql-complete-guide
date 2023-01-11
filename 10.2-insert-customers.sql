-- @statement 1
INSERT INTO customers(first_name, last_name, email)
VALUES('Billy', 'Jones', 'maria@test.com');
-- @adding save points for transactions
SAVEPOINT save_1;