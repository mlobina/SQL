SELECT 
  'Hello',
  150000, 
  date_created,
  customer_name,
  product_name,
  volume / 10 AS total_sales
FROM sales;