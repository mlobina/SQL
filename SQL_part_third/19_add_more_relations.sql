-- CREATE TABLE company_buildings (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(200) NOT NULL,
-- );

-- CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(200) NOT NULL,
--     building_id INT REFERENCES company_buildings ON DELETE SET NULL
-- );

-- CREATE TABLE employees (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(300) NOT NULL, 
--     last_name VARCHAR(300) NOT NULL, 
--     birthdate DATE,
--     email VARCHAR(300) UNIQUE NOT NULL,
--     team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
-- );

-- CREATE TABLE intranet_accounts (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
--     password VARCHAR(200) NOT NULL
-- );

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    building_id INT DEFAULT 1 REFERENCES company_buildings ON DELETE SET DEFAULT
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL, 
    last_name VARCHAR(300) NOT NULL, 
    birthdate DATE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    team_id INT REFERENCES teams ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);