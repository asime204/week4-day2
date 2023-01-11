INSERT INTO customer (
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'John', 'Doe', 'johndoe@gmail.com', '555-555-1212'
),(
    'Jane', 'Doe', 'janedoe@gmail.com', '555-555-1213'
),(
    'Will', 'Smith', 'wsmith@icloud.com', '555-555-1214'
),( 
    'Samantha', 'Johnson', 'samantha1256@hotmail.com','555-555-1215'
),(
    'Michael', 'Scott', 'mscott@dunder.com', '555-555-1216'
);

INSERT INTO movie (
    title,
    release_date,
    run_time,
    rating
) VALUES (
    'The Shawshank Redemption', '1994-10-14', '142 min', 'R'
),( 
    'The Godfather', '1972-03-24', '175 min', 'R'
),( 
    'The Godfather: Part II', '1974-12-20', '202 min', 'R'
),( 
    'The Dark Knight', '2008-07-16', '152 min', 'PG-13'
),( 
    '12 Angry Men', '1957-04-10', '96 min', 'NR'
);

INSERT INTO ticket (
    ticket_date,
    movie_time,
    price,
    customer_id,
    movie_id
) VALUES (
    '2023-01-10', '7:00 PM', 12.50, 1, 1
), (
    '2023-01-10', '9:00 PM', 15.00, 2, 2
), (
    '2023-01-09', '7:00 PM', 12.50, 3, 3
), (
    '2023-01-09', '9:00 PM', 15.00, 4, 4
), (
    '2023-01-08', '7:00 PM', 12.50, 5, 5
);

INSERT INTO concession (
    concession_name,
    price,
    customer_id
) VALUES (
    'Popcorn', 4.00, 1
), (
    'Soda', 3.00, 2
), (
    'Snickers', 2.50, 3
), (
    'Nachos', 5.00, 4
), (
    'MM', 4.50, 5
);

