-- 1.Index -> An index improves query performance by allowing the database to locate rows faster.
-- Without index -> Full table scan
-- With index -> Direct lookup

create index idx_customer_email
on sales.customers(email);

select * 
from sales.customers
where email = 'priya@gmail.com'

-- 2. Index on frequently filtered columns

create index idx_orders_customer
on sales.orders(customer_id);

select * from sales.orders
where customer_id = 2

-- 3. Composite Index

create index idx_orders_customer_date
on sales.orders(customer_id, order_date);

select *
from sales.orders
where customer_id = 2
and order_date = '2024-01-10';

-- 4. Check Query Performance

explain 
select *
from sales.orders
where customer_id = 2;

--this shows actual execution time

explain analyze
select *
from sales.orders
where customer_id = 2;

-- 5. List  All indexes

select * 
from pg_indexes
where schemaname = 'sales';

-- 6. Drop Index

drop index sales.idx_customer_email;
