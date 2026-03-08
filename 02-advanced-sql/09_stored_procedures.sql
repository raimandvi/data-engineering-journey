-- Stored Procedures - A stored procedure or function is SQL code saved in the database that you can reuse anytime.
-- Instead of writing the same query again and again,you create a function once and call it whenever needed.

create or replace function get_customer_orders(cid int)
returns int as $$
select count(*)
from sales.orders
where customer_id = cid;
$$ language sql;

select get_customer_orders(1);