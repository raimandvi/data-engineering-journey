-- Subquery in WHERE clause  (Find customers who have placed at least one order)

SELECT name
FROM sales.customers
WHERE customer_id IN (
    SELECT customer_id
    FROM sales.orders
);

-- Subquery with NOT IN (Customers who never placed any order)

SELECT name
FROM sales.customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM sales.orders
);

-- Subquery with Aggregate function (Customers who spent more than average order value)

SELECT name
FROM sales.customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM sales.orders o
    JOIN sales.products p
        ON o.product_id = p.product_id
    GROUP BY o.customer_id
    HAVING SUM(o.quantity * p.price) >
        (
            SELECT AVG(o.quantity * p.price)
            FROM sales.orders o
            JOIN sales.products p
                ON o.product_id = p.product_id
        )
);

-- Subquery in SELECT clause (show total order per customer)

SELECT 
    c.name,
    (
        SELECT COUNT(*)
        FROM sales.orders o
        WHERE o.customer_id = c.customer_id
    ) AS total_orders
FROM sales.customers c;

-- Correlated Subquery (Customers who placed more than 1 order)

SELECT name
FROM sales.customers c
WHERE (
    SELECT COUNT(*)
    FROM sales.orders o
    WHERE o.customer_id = c.customer_id
) > 1;
