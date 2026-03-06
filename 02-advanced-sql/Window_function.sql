-- 1. ROW_NUMBER() (Each customer's orders are numbered sequentially)
-- Rank orders per customer

SELECT
    customer_id,
    order_id,
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) AS order_rank
FROM sales.orders;

-- 2.RANK()
-- Same price -> same rank (But next rank skips numbers)

SELECT
    product_name,
    price,
    RANK() OVER(ORDER BY price DESC) AS price_rank
FROM sales.products;

-- 3. DENSE_RANK()
-- No gaps in ranking.

SELECT
    product_name,
    price,
    DENSE_RANK() OVER(ORDER BY price DESC) AS price_rank
FROM sales.products;

-- 4. LAG()
-- Compare with previous order

SELECT
    order_id,
    customer_id,
    quantity,
    LAG(quantity) OVER(PARTITION BY customer_id ORDER BY order_date) AS previous_order_quantity
FROM sales.orders;

-- 5. LEAD()
-- Compare with next order

SELECT
    order_id,
    customer_id,
    quantity,
    LEAD(quantity) OVER(PARTITION BY customer_id ORDER BY order_date) AS next_order_quantity
FROM sales.orders;