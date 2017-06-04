DROP TABLE tickets;
DROP TABLE customers;
DROP TABLE films;

CREATE TABLE customers(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  funds INT8
);

CREATE TABLE films(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  price INT8
);

CREATE TABLE tickets(
  id SERIAL8 PRIMARY KEY,
  customer_id INT8 REFERENCES customers(id) ON DELETE CASCADE,
  film_id INT8 REFERENCES films(id) ON DELETE CASCADE
);

-- INSERT INTO customers (name, funds) VALUES ('John Allan', 60);
-- INSERT INTO customers (name, funds) VALUES ('Colin Bell', 50);
-- INSERT INTO customers (name, funds) VALUES ('Graham Bruce', 50);
-- INSERT INTO customers (name, funds) VALUES ('Stuart Bryce', 60);
-- INSERT INTO customers (name, funds) VALUES ('Christopher Burn', 60);
-- INSERT INTO customers (name, funds) VALUES ('David Clarkson', 650);
-- INSERT INTO customers (name, funds) VALUES ('Samuel DaBell', 60);
-- INSERT INTO customers (name, funds) VALUES ('Crawford Davidson', 60);
-- INSERT INTO customers (name, funds) VALUES ('Natasha Ford', 60);
-- INSERT INTO customers (name, funds) VALUES ('Dale Johnston', 50);
-- INSERT INTO customers (name, funds) VALUES ('Kieran Marshall', 60);
-- INSERT INTO customers (name, funds) VALUES ('Eddie Ng', 60);
-- INSERT INTO customers (name, funds) VALUES ('Michael Robertson', 50);
-- INSERT INTO customers (name, funds) VALUES ('Jia Wong', 60);

-- INSERT INTO films (title, price) VALUES ('Iron Man', 11);
-- INSERT INTO films (title, price) VALUES ('The Incredible Hulk', 14);
-- INSERT INTO films (title, price) VALUES ('Iron Man 2', 12);
-- INSERT INTO films (title, price) VALUES ('Thor', 11);
-- INSERT INTO films (title, price) VALUES ('Captain America: The First Avenger', 14);
-- INSERT INTO films (title, price) VALUES ('Avengers Assemble', 11);
-- INSERT INTO films (title, price) VALUES ('Iron Man 3', 12);
-- INSERT INTO films (title, price) VALUES ('Thor: The Dark World', 10);
-- INSERT INTO films (title, price) VALUES ('Batman Begins', 13);
-- INSERT INTO films (title, price) VALUES ('Captain America: The Winter Soldier', 12);
-- INSERT INTO films (title, price) VALUES ('Guardians of the Galaxy', 12);
-- INSERT INTO films (title, price) VALUES ('Avengers: Age of Ultron', 13);
-- INSERT INTO films (title, price) VALUES ('Ant-Man', 14);
-- INSERT INTO films (title, price) VALUES ('Captain America: Civil War', 14);
-- INSERT INTO films (title, price) VALUES ('Doctor Strange', 13);
-- INSERT INTO films (title, price) VALUES ('Guardians of the Galaxy 2', 12);

-- INSERT INTO tickets (customer_id, film_id) VALUES (1, 6);
-- INSERT INTO tickets (customer_id, film_id) VALUES (14, 7);
-- INSERT INTO tickets (customer_id, film_id) VALUES (2, 9);
-- INSERT INTO tickets (customer_id, film_id) VALUES (9, 6);
-- INSERT INTO tickets (customer_id, film_id) VALUES (3, 3);
-- INSERT INTO tickets (customer_id, film_id) VALUES (5, 5);
-- INSERT INTO tickets (customer_id, film_id) VALUES (2, 13);
-- INSERT INTO tickets (customer_id, film_id) VALUES (10, 2);
-- INSERT INTO tickets (customer_id, film_id) VALUES (11, 2);
-- INSERT INTO tickets (customer_id, film_id) VALUES (1, 11);
-- INSERT INTO tickets (customer_id, film_id) VALUES (6, 10);
-- INSERT INTO tickets (customer_id, film_id) VALUES (11, 13);
-- INSERT INTO tickets (customer_id, film_id) VALUES (4, 1);
-- INSERT INTO tickets (customer_id, film_id) VALUES (9, 13);
-- INSERT INTO tickets (customer_id, film_id) VALUES (5, 7);
-- INSERT INTO tickets (customer_id, film_id) VALUES (6, 9);
-- INSERT INTO tickets (customer_id, film_id) VALUES (1, 4);
-- INSERT INTO tickets (customer_id, film_id) VALUES (7, 13);
-- INSERT INTO tickets (customer_id, film_id) VALUES (1, 4);
-- INSERT INTO tickets (customer_id, film_id) VALUES (9, 5);
-- INSERT INTO tickets (customer_id, film_id) VALUES (10, 8);
-- INSERT INTO tickets (customer_id, film_id) VALUES (12, 6);
-- INSERT INTO tickets (customer_id, film_id) VALUES (14, 14);
-- INSERT INTO tickets (customer_id, film_id) VALUES (13, 16);

  -- \c database (to manually connect)
  -- psql -d database -f filename
  -- psql filename
