# 📊 Data Modeling for Data Engineers

This folder contains SQL implementations of fundamental **Data Modeling concepts** used in **Data Engineering and Data Warehousing**.

Data modeling helps design databases that are **efficient, scalable, and optimized for analytics**.

---

# 📚 Topics Covered

## 1️⃣ Database Normalization

**File:** `01_normalization.sql`

This file demonstrates how to design a **normalized relational database schema** using an **E-commerce example**.

### Tables Created

* `customers`
* `products`
* `orders`
* `order_items`

### Concepts Demonstrated

* Reducing **data redundancy**
* Maintaining **data integrity**
* Handling **many-to-many relationships**
* Using **bridge tables** (`order_items`)

---

## 2️⃣ Star Schema

**File:** `02_star_schema.sql`

Implements a **Star Schema**, one of the most common data warehouse modeling techniques used for **analytics and BI dashboards**.

### Schema Structure

Fact Table:

* `fact_sales`

Dimension Tables:

* `dim_customer`
* `dim_product`
* `dim_date`
* `dim_store`

### Purpose

* Optimized for **analytical queries**
* Faster **aggregations**
* Ideal for **BI tools** like Power BI and Tableau

---

## 3️⃣ Snowflake Schema


 **Snowflake Schema**, where **dimension tables are normalized into multiple related tables**.

### Example

`dim_product` → `dim_category`

### Purpose

* Reduces **data redundancy**
* Improves **data organization**
* Common in **large enterprise data warehouses**

---

## 4️⃣ Fact Tables vs Dimension Tables


Shows the difference between **Fact Tables** and **Dimension Tables**, which is a core concept in data warehousing.

### Fact Table Example

`fact_sales`

Stores measurable business metrics such as:

* `quantity`
* `sales_amount`

### Dimension Tables Example

* `dim_product`
* `dim_customer`
* `dim_date`

Dimension tables store **descriptive attributes** used to analyze the facts.

---

# 🏗 Example Star Schema Design

```
            dim_customer
                 |
dim_product — fact_sales — dim_date
                 |
              dim_store
```

Fact tables store **metrics**, while dimension tables provide **context for analysis**.

---

# 🛠 Tools Used

* **PostgreSQL**
* **SQL**

---

# 🎯 Learning Goal

This section demonstrates **core data modeling concepts required for Data Engineer roles**, including:

* Relational database design
* Data warehouse schema design
* Analytical data modeling
* Fact and dimension table structures

These concepts are commonly used in modern data platforms such as:

* Snowflake
* Amazon Redshift
* Google BigQuery
* Azure Synapse
