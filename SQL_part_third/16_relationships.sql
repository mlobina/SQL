CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL, 
    last_name VARCHAR(300) NOT NULL, 
    birthdate DATE,
    email VARCHAR(300) UNIQUE NOT NULL 
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);







-- CREATE TABLE employees (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL, 
--     last_name VARCHAR(300) NOT NULL, 
--     birthdate DATE,
--     email VARCHAR(300) UNIQUE NOT NULL
-- );

-- CREATE TABLE intranet_accounts (
--     id SERIAL PRIMARY KEY,
--     email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
--     password VARCHAR(200) NOT NULL
-- );
