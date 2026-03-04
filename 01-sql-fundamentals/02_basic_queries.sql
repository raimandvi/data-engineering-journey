-- Get all customers

SELECT * FROM sales.customers;

-- Select specific columns

SELECT name, city FROM sales.customers;

-- Filter by city

SELECT * 
FROM sales.customers
WHERE city = 'Delhi';

-- Sort products by price descending

SELECT * 
FROM sales.products
ORDER BY price DESC;

-- Count total customers

SELECT COUNT(*) AS total_customers
FROM sales.customers;

-- Get average product price

SELECT AVG(price) AS avg_price
FROM sales.products;

-- Get total order quantity

SELECT SUM(quantity) AS total_quantity
FROM sales.orders;

-- Orders after May 1
SELECT *
FROM sales.orders
WHERE order_date > '2024-05-01';

-- Customers created this month
SELECT *
FROM sales.customers
WHERE created_at >= DATE_TRUNC('month', CURRENT_DATE);

-- Revenue per order (Subquery Example)
SELECT 
    o.order_id,
    o.quantity * p.price AS revenue
FROM sales.orders o
JOIN sales.products p
ON o.product_id = p.product_id;