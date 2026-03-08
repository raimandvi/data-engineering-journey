### 🚀 Advanced SQL

This folder contains **advanced SQL concepts and practical queries** implemented using **PostgreSQL**.
The purpose of this section is to build a deeper understanding of SQL techniques used in **data engineering, analytics, and real-world database systems**.

These topics focus on **query optimization, transaction management, reusable database logic, and analytical SQL techniques**.

---
 📚 Topics Covered

|  # | Topic                          | Description                                  |
| -- | ------------------------------ | -------------------------------------------- |
| 1  | Joins                          | Combine data from multiple tables            |
| 2  | Subqueries                     | Queries inside other queries                 |
| 3  | CTE (Common Table Expressions) | Structured and readable complex queries      |
| 4  | Window Functions               | Analytical calculations across rows          |
| 5  | Indexes                        | Improve query performance                    |
| 6  | Views                          | Virtual tables created from queries          |
| 7  | Transactions & ACID            | Reliable database operations                 |
| 8  | Isolation Levels               | Control how concurrent transactions interact |
| 9  | Stored Procedures / Functions  | Reusable SQL logic                           |
| 10 | Triggers                       | Automatically execute logic on table events  |

---


🧠 Key Concepts Practiced

### 🔗 Joins

Used to combine related data from multiple tables.

Examples:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN

---

### 📊 Window Functions

Window functions perform calculations across rows without grouping them.

Examples used:

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `SUM() OVER()`
* `AVG() OVER()`

These are commonly used in **analytics and reporting systems**.

---

### ⚡ Indexes

Indexes improve query performance by allowing the database to locate data faster.

Concepts covered:

* Creating indexes
* Dropping indexes
* Understanding performance benefits

---

### 🔄 Transactions & ACID Properties

Transactions ensure a group of SQL operations execute as **one logical unit**.

ACID principles covered:

* **Atomicity**
* **Consistency**
* **Isolation**
* **Durability**

These properties ensure **reliable database operations**.

---

### 🔐 Isolation Levels

Isolation levels control how multiple transactions interact with each other.

Concepts explored:

* Dirty Reads
* Non-repeatable Reads
* Phantom Reads

Isolation levels used in PostgreSQL:

* READ COMMITTED
* REPEATABLE READ
* SERIALIZABLE

---

### ⚙ Stored Procedures / Functions

Stored functions allow SQL logic to be **stored and reused inside the database**.

Benefits:

* Reusable code
* Better performance
* Cleaner queries

---

### 🔔 Triggers

Triggers automatically execute when specific database events occur.

Common events:

* INSERT
* UPDATE
* DELETE

Triggers are useful for:

* Logging changes
* Maintaining audit tables
* Enforcing business rules

---

# 🗄 Database Used

All queries were implemented using **PostgreSQL**.

Practice tables used in this section:

* `customers`
* `products`
* `orders`

These tables simulate a **simple sales database** used for practicing advanced SQL queries.

