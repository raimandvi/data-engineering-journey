-- Star Schema Example for E-commerce sales analytics

-- Star schema structure:

--                   dim_customer
--						    |
--	dim_product ------- fact_sales ----- dim_date
--							|
--					   dim_store

-- Fact Table:
--		fact_sales

-- Dimension Tables:
--       dim_customer
--       dim_product
--       dim_date
--       dim_store


CREATE TABLE dim_customer (
	customer_id int primary key,
	customer_name varchar(100),
	city varchar(50),
	country varchar(50)
);


create table dim_product (
	product_id int primary key,
	product_name varchar(100),
	category varchar(50),
	price decimal(10, 2)
);

create table dim_date(
	date_id int primary key,
	full_date date,
	month int,
	year int
);


create table dim_store (
	store_id int primary key,
	store_name varchar(100),
	city varchar(50)
);



create table fact_sales (
	sales_id int primary key,
	product_id int,
	customer_id int,
	date_id int,
	store_id int, 
	quantity int,
	sales_amount decimal(10,2),

	foreign key (product_id) references dim_product(product_id),
	foreign key (customer_id) references dim_customer(customer_id),
	foreign key (date_id) references dim_date(date_id),
	foreign key (store_id) references dim_store(store_id)

);









