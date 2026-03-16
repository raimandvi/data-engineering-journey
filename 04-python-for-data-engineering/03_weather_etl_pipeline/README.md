# Weather ETL Pipeline

This project demonstrates a simple **ETL (Extract, Transform, Load) pipeline** built using Python.  
The pipeline fetches weather data for multiple cities from a public weather API and stores the processed data into a CSV file.

---

## 📌 Project Overview

The pipeline performs the following steps:

1. **Extract** – Fetch weather data from the Open-Meteo API
2. **Transform** – Process and structure the JSON response
3. **Load** – Store the cleaned data into a CSV file

This project is designed to demonstrate **data engineering concepts such as API data ingestion, modular project structure, logging, and pipeline orchestration.**

---

## ⚙️ Technologies Used

- Python
- Pandas
- Requests
- REST API (Open-Meteo)
- Logging

---

## 🔄 ETL Pipeline Flow


Weather API
↓
Python API Client
↓
Data Transformation (Pandas)
↓
CSV Storage


---

## 📍 Cities Included

The pipeline fetches weather data for:

- Delhi
- Mumbai
- Bangalore
- Hyderabad

---

## ▶️ How to Run the Project

### 1️⃣ Clone the repository


git clone <your-repository-url>


### 2️⃣ Install dependencies


pip install -r requirements.txt


### 3️⃣ Run the pipeline


python main.py


---

## 🎯 Learning Outcomes

This project demonstrates:

- API data extraction
- JSON data processing
- Modular Python project structure
- Logging in pipelines
- Basic ETL workflow

---

## 🚀 Future Improvements

Possible extensions:

- Store data in **PostgreSQL**
- Schedule pipeline with **Apache Airflow**
- Add **retry mechanism for API failures**
- Add **data validation**














