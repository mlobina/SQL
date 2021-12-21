DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversation;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status employment_status NOT NULL
);

CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(250) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversation (
    id SERIAL PRIMARY KEY,
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);