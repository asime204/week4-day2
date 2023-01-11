-- Using lucidchart and POSTGRESQL create an ERD for a movie theater
-- (customers,tickets, concessions, movies at minimum but you can have more) 
-- afterward create the tables.

-- -- Inside of your ERD please backup the reasoning behind why you decided to use the relationships
--  you chose. You can do so by adding text to the bottom of the ERD.

-- -- Also insert data into the 4 tables that you create.-- 

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number INTEGER
);

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    release_date INTEGER,
    run_time INTEGER,
    rating VARCHAR(30)
);

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    ticket_date VARCHAR,
    movie_time VARCHAR, 
    price NUMERIC(10,2),
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concession (
    concession_id SERIAL PRIMARY KEY,
    concession_name VARCHAR,
    price NUMERIC(10,2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE movie
ALTER COLUMN release_date TYPE VARCHAR,
ALTER COLUMN run_time TYPE VARCHAR;

ALTER TABLE customer
ALTER COLUMN phone_number TYPE VARCHAR;

