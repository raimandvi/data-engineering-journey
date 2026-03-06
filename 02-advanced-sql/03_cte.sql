-- Find customers who placed orders

WITH customer_orders AS (
    SELECT customer_id
    FROM sales.orders
)

SELECT name
FROM sales.customers
WHERE customer_id IN (
    SELECT customer_id
    FROM customer_orders
);

-- CTE with JOIN (Show customer name with product purchased)

WITH order_details AS (
    SELECT 
        o.order_id,
        c.name,
        p.product_name,
        o.quantity
    FROM sales.orders o
    JOIN sales.customers c
        ON o.customer_id = c.customer_id
    JOIN sales.products p
        ON o.product_id = p.product_id
)

SELECT *
FROM order_details;

-- CTE with Aggregation (Total spending per customer)

WITH customer_spending AS (
    SELECT 
        o.customer_id,
        SUM(o.quantity * p.price) AS total_spent
    FROM sales.orders o
    JOIN sales.products p
        ON o.product_id = p.product_id
    GROUP BY o.customer_id
)

SELECT 
    c.name,
    cs.total_spent
FROM customer_spending cs
JOIN sales.customers c
    ON cs.customer_id = c.customer_id;


-- Multiple CTEs

WITH order_summary AS (
    SELECT 
        customer_id,
        COUNT(*) AS total_orders
    FROM sales.orders
    GROUP BY customer_id
),
high_orders AS (
    SELECT *
    FROM order_summary
    WHERE total_orders > 1
)

SELECT c.name, h.total_orders
FROM high_orders h
JOIN sales.customers c
ON h.customer_id = c.customer_id;