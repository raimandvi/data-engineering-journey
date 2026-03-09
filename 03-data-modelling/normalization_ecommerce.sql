-- Data Modeling - Data modeling is the process of designing how data will be stored, organized, and related in a database.
-- Example - Imagine an E-commerce website.
-- we store: . Customers
--           . Products
--			 . Orders
--           . Payments

--- Customers table

CREATE TABLE customers (
	customer_id int PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100)
);

-- Products table
CREATE TABLE prodcuts (
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100),
	price INT
);

-- Orders table

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order items table

CREATE TABLE order_items (
	order_id INT,
	product_id INT,
	quantity INT,
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);


			 










