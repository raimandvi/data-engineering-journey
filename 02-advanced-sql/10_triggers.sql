-- Triggers - A Trigger automatically runs when an event happens in a table.
-- Events can be:
-- . INSERT
-- . UPDATE
-- . DELETE
-- example - when a new order is created, log it.

-- STEP 1: Create a log table

create table sales.order_logs(
	log_id serial primary key,
	order_id int,
	log_time timestamp default current_timestamp

)

-- STEP 2: Create trigger function

create or replace function log_new_order()
returns trigger as $$
begin
	insert into sales.order_logs(order_id)
	values(new.order_id);
	return new;
end;
$$ language plpgsql;

-- STEP 3: Create the trigger

create trigger order_insert_trigger
after insert on sales.orders
for each row
execute function log_new_order();

-- Now whenever a new order is inserted:

insert into sales.orders(customer_id, product_id, quantity)
values (1,2,3);

-- A log will automatically be inserted in order_logs.
