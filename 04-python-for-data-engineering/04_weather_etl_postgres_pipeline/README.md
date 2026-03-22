# 🌦 Weather ETL Pipeline with PostgreSQL

A production-style **Data Engineering ETL pipeline** built using Python that extracts weather data from an API, transforms it, and loads it into a **PostgreSQL database**.

This project demonstrates **end-to-end data pipeline development**, including API ingestion, transformation, and database integration.

---

# 📌 Project Objective

The goal of this project is to simulate a **real-world data pipeline** that:

✔ Extracts data from an external API  
✔ Transforms raw JSON data into structured format  
✔ Loads data into a relational database (PostgreSQL)  
✔ Uses modular architecture for scalability  

---

# 🏗 Pipeline Architecture


Weather API
│
▼
Python API Client
│
▼
Data Transformation (Pandas)
│
▼
PostgreSQL Database



This follows the standard **ETL (Extract → Transform → Load)** pattern used in production systems.

---

# ⚙️ Technologies Used

| Technology | Purpose |
|------------|--------|
| Python | Core programming |
| Requests | API data extraction |
| Pandas | Data transformation |
| PostgreSQL | Data storage |
| psycopg2 | Database connection |
| Logging | Pipeline monitoring |



---

# 🔄 ETL Workflow

### 1️⃣ Extract
- Weather data is fetched from the **Open-Meteo API**
- Uses `requests` library

### 2️⃣ Transform
- JSON data is processed and structured
- Converted into a Pandas DataFrame

### 3️⃣ Load
- Data is inserted into **PostgreSQL table**
- Uses `psycopg2`

---

# 🗄 Database Setup

### Create Database

```sql
CREATE DATABASE weather_db;



