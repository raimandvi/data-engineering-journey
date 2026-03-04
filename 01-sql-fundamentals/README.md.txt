# SQL Fundamentals – PostgreSQL

## 📌 Overview
This module covers the foundational SQL concepts implemented using PostgreSQL.  
It focuses on understanding relational database structure, data manipulation, and query writing.

---

## 🗂 Database Schema Used

Schema: `sales`

### Tables Created

1. **customers**
   - customer_id (Primary Key)
   - name
   - email (Unique)
   - city
   - created_at

2. **products**
   - product_id (Primary Key)
   - product_name
   - category
   - price (Check constraint)

3. **orders**
   - order_id (Primary Key)
   - customer_id (Foreign Key → customers)
   - product_id (Foreign Key → products)
   - quantity
   - order_date

---

## 🧠 Concepts Covered

- Database and schema creation
- Table creation (DDL)
- Primary & Foreign Keys
- Constraints (NOT NULL, UNIQUE, CHECK)
- Data insertion (DML)
- Basic SELECT queries
- Filtering (WHERE)
- Sorting (ORDER BY)
- Aggregations (SUM, COUNT, AVG)
- GROUP BY and HAVING

---

## 🎯 Key Learning Outcomes

- Understanding relational database design
- Implementing foreign key relationships
- Writing structured SQL queries
- Performing basic business data analysis

---

## 🛠 Tools Used

- PostgreSQL
- pgAdmin
- Git & GitHub

---

## 🚀 How to Run

1. Create schema `sales`
2. Execute table creation scripts
3. Insert sample data
4. Run SELECT queries for analysis

