-- 1. View - View is a virtual table created from a SQL query.
-- It does not store data, it just stores the query.

create view sales.customer_orders as 
select 
	o.order_id,
	c.name as customer_name,
	p.product_name,
	o.quantity,
	p.price,
	(o.quantity * p.price) as total_amount
from sales.orders o
join sales.customers c
on o.customer_id = c.customer_id
join sales.products p
on o.product_id = p.product_id;

-- Now you can query it like a table (Benefit - complex queriesbecome reusable and clean)
select * from sales.customer_orders;

-- 2. Update a view

CREATE OR REPLACE VIEW sales.customer_orders AS
SELECT
    o.order_id,
    c.name,
    p.product_name,
    o.quantity
FROM sales.orders o
JOIN sales.customers c
ON o.customer_id = c.customer_id
JOIN sales.products p
ON o.product_id = p.product_id;

-- 3. Drop a view

drop view sales.customer_orders;

--Best practice:

drop view if exists sales.customer_orders;

-- 4. Materialized View
-- A Materialized view actually stores the query result
-- This makes queries much faster for large datasets.

CREATE MATERIALIZED VIEW sales.sales_summary AS
SELECT
    c.name,
    SUM(o.quantity * p.price) AS total_spent
FROM sales.orders o
JOIN sales.customers c
ON o.customer_id = c.customer_id
JOIN sales.products p
ON o.product_id = p.product_id
GROUP BY c.name;

SELECT * 
FROM sales.sales_summary;

-- 6.Refresh Materialized View

REFRESH MATERIALIZED VIEW sales.sales_summary;














