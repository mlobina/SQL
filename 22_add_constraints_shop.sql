-- ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price DECIMAL(8,2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN amount_in_stock INT NOT NULL;

-- ALTER TABLE products
-- ALTER COLUMN product_name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN amount_in_stock SET NOT NULL;

-- ALTER TABLE products
-- ADD CONSTRAINT price CHECK (price > 0);

ALTER TABLE products
ADD CONSTRAINT amount_positive CHECK (amount_in_stock >= 0);