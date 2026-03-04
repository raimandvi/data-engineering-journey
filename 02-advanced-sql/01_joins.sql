-- 1. INNER JOIN (All orders along with the customer details who placed those orders.)

SELECT
    o.order_id,
    c.name AS customer_name,
    c.email,
    o.order_date,
    o.quantity
FROM sales.orders o
INNER JOIN sales.customers c
ON o.customer_id = c.customer_id;

-- 2. Inner Join (Display each order laong with product details)

SELECT
    o.order_id,
    p.product_name,
    p.category,
    o.quantity,
    p.price
FROM sales.orders o
INNER JOIN sales.products p
ON o.product_id = p.product_id;

-- Three table join (combines data from three tables to generate complete order information)

SELECT
    o.order_id,
    c.name AS customer_name,
    p.product_name,
    o.quantity,
    p.price,
    (o.quantity * p.price) AS total_amount,
    o.order_date
FROM sales.orders o
JOIN sales.customers c
    ON o.customer_id = c.customer_id
JOIN sales.products p
    ON o.product_id = p.product_id;


-- Left join (Shows all customers, even those have not placed any orders.)

SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date
FROM sales.customers c
LEFT JOIN sales.orders o
ON c.customer_id = o.customer_id;

-- Left Join (finds products that have never been ordered)

SELECT
    p.product_name,
    o.order_id
FROM sales.products p
LEFT JOIN sales.orders o
ON p.product_id = o.product_id
WHERE o.order_id IS NULL;

-- Aggregation After join (calculates total amount spent by each customer)

SELECT
    c.name AS customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM sales.customers c
JOIN sales.orders o
    ON c.customer_id = o.customer_id
JOIN sales.products p
    ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Category-wise sales (calculates total sales for each product category)

SELECT
    p.category,
    SUM(o.quantity * p.price) AS category_sales
FROM sales.orders o
JOIN sales.products p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_sales DESC;


