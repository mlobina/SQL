DROP TABLE products;

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    price DECIMAL(8,2) NOT NULL CHECK (price > 0),
    description TEXT,
    amount_in_stock INT NOT NULL CHECK (amount_in_stock >= 0),
    image VARCHAR(200)
);