# 📊 Job Market Analysis Using SQL Server

<p align="center">
  <img src="https://github.com/GeorgeHanyMilad/Job-Market-Analysis-Using-SQL-Server/blob/master/Job%20Market%20Image.jpg?raw=true" alt="Project Overview" width="700"/>
</p>

## 📌 Overview

This project is a **SQL-based job market analysis** developed using Microsoft SQL Server.  
It aims to simulate a real-world scenario where job data is stored, managed, and analyzed using pure SQL.  
The dataset includes job listings, required skills, job sources, and notes about job applications.

> ⚠️ **Note:** The entire database and dataset were built from scratch manually.  
> No external datasets were used — all job listings, skills, and associated data were **custom-designed as fictional but realistic data** to mimic a real job market environment.

The project was built entirely using structured query language (SQL) and focuses on **database design, data manipulation, and analytical querying** to extract valuable insights from the job market in Egypt.

---

## 🎯 Project Goals

- Create a structured relational database from scratch using DDL.
- Insert realistic and diverse job market data using DML.
- Apply powerful SQL queries to analyze job trends, salary patterns, skill demand, and more.
- Develop hands-on SQL skills through real-world use cases.

---

## ✅ Key Features

- **Realistic Job Data:** Includes job titles, companies, locations, types, salaries, categories, experience levels, and required skills.
- **Multi-Table Structure:** Uses normalized tables with relationships to simulate a real job board database.
- **Insightful SQL Queries:**  
  - Identify the most in-demand skills  
  - Compare average salaries by city or category  
  - Detect top hiring companies  
  - Filter jobs based on job type, skillset, or experience  
  - Count postings over time to identify trends

---

## 📐 Database Schema Diagram

<p align="center">
  <img src="https://github.com/GeorgeHanyMilad/Job-Market-Analysis-Using-SQL-Server/blob/master/Database%20Schema%20Diagram.jpg?raw=true" alt="Database Diagram" width="800"/>
</p>

---

## 🧩 Query Types Used

This project includes a wide variety of SQL query types, covering most of the critical features a Data Analyst or SQL Developer should master:

- **DDL (Data Definition Language):**
  - `CREATE`, `ALTER`, `DROP` for creating and managing the schema and structure.

- **DML (Data Manipulation Language):**
  - `INSERT`, `UPDATE`, `DELETE`, `TRUNCATE` for manipulating the data inside the tables.

- **Aggregate Functions:**
  - `COUNT()`, `AVG()`, `MAX()`, `MIN()` used to summarize insights like salary averages and job counts.

- **Window Functions:**
  - `RANK()` used to rank jobs by salary within each category.

- **Joins (INNER JOIN):**
  - To connect jobs with skills and analyze required qualifications.

- **Subqueries:**
  - Nested queries used for filtering jobs by multiple skills or other dynamic conditions.

- **Filtering & Pattern Matching:**
  - Using `LIKE`, `IN`, `WHERE`, and `HAVING` clauses to implement specific business logic.

- **Grouping & Ordering:**
  - Using `GROUP BY` and `ORDER BY` for sorting and organizing results meaningfully.

- **Date Functions & Formatting:**
  - `FORMAT()`, `GETDATE()` used to analyze posting trends over time.

- **Cleanup & Maintenance Queries:**
  - Including `TRUNCATE`, `DROP`, and `DELETE` queries to manage the database during testing.

---

## 💡 Benefits

- Strengthens your SQL skills using real-world datasets.
- Prepares you for **SQL interviews** through practical query practice.
- Helps you understand how to **design and analyze** relational databases.
- Valuable addition to your **portfolio** as a Data Analyst or aspiring SQL developer.

---

## 🛠️ Tools Used

- Microsoft SQL Server Management Studio (SSMS)  
- T-SQL (Transact-SQL)  
- PowerPoint for presenting queries and results