-- SELECT c.email FROM customers AS c   
-- INNER JOIN orders AS o ON c.id = o.customer_id;


SELECT email FROM customers
WHERE id IN(
    SELECT customer_id
    FROM orders
);
