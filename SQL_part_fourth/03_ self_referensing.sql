CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL, 
    last_name VARCHAR(300) NOT NULL, 
    birthdate DATE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    supervisor_id INT REFERENCES employees ON DELETE SET NULL
);