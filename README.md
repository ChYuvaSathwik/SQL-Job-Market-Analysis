# 📊 SQL Job Market Analysis using MySQL

A SQL project that analyzes job posting data using MySQL and answers 30 real-world business questions related to hiring trends, salaries, companies, and technical skills.

---

# 🚀 Project Overview

The SQL Job Market Analysis project is designed to analyze job posting data using MySQL and answer real-world business questions through SQL queries.

The project focuses on understanding hiring trends, salary distribution, company hiring patterns, and the most in-demand technical skills by working with a relational database consisting of Fact and Dimension tables.

As part of this project, I solved **30 real-world business questions** using SQL concepts such as JOINs, GROUP BY, HAVING, Aggregate Functions, and Sorting.

This project demonstrates practical SQL skills commonly used by Data Analysts, Business Analysts, and SQL Developers.

---

# 🎯 Objectives

The primary objectives of this project are:

- Analyze job market trends
- Identify the most in-demand technical skills
- Discover high-paying job roles
- Compare average salaries across companies
- Understand relationships between jobs and required skills
- Solve 30 real-world SQL business questions
- Strengthen SQL problem-solving skills using practical datasets

---

# 🛠 Technologies Used

- MySQL
- MySQL Workbench
- GitHub

---

# 🗂 Database Design

The database consists of three relational tables.

### 1️⃣ job_postings_fact

Stores job-related information such as:

- Job ID
- Job Title
- Company Name
- Job Location
- Average Salary
- Job Schedule Type
- Work From Home Status

---

### 2️⃣ skills_dim

Stores all available technical skills.

Examples:

- SQL
- Python
- Excel
- Tableau
- Power BI
- AWS

---

### 3️⃣ skills_job_dim

Bridge table that connects jobs with skills.

This table establishes a **Many-to-Many relationship** between `job_postings_fact` and `skills_dim`.

---

# 🗃 Entity Relationship Diagram (ERD)

The database consists of three related tables connected through a bridge table (`skills_job_dim`).

```text
+-----------------------------+
|      job_postings_fact      |
+-----------------------------+
| PK  job_id                  |
|     job_title               |
|     company_name            |
|     job_location            |
|     salary_year_avg         |
|     job_schedule_type       |
|     job_work_from_home      |
+-----------------------------+
             |
             | job_id
             |
             ▼
+-----------------------------+
|       skills_job_dim        |
+-----------------------------+
| PK/FK job_id                |
| PK/FK skill_id              |
+-----------------------------+
             ▲
             |
             | skill_id
             |
+-----------------------------+
|         skills_dim          |
+-----------------------------+
| PK  skill_id                |
|     skill_name              |
+-----------------------------+
```

### Relationship

- One job can require multiple skills.
- One skill can belong to multiple jobs.
- `skills_job_dim` acts as a bridge table that creates a **Many-to-Many relationship** between `job_postings_fact` and `skills_dim`.

---

# 📈 Business Questions Solved

This project answers **30 real-world business questions**, including:

- Count total job postings
- Find unique job titles
- Find the highest-paying jobs
- Calculate average salary by company
- Identify the most in-demand skills
- Find jobs requiring SQL
- Find jobs requiring SQL and Python
- Count jobs by location
- Find companies hiring the most employees
- Analyze company skill requirements

---

# 💡 SQL Concepts Used

This project demonstrates:

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT
- Aggregate Functions
- COUNT()
- AVG()
- MAX()
- MIN()
- SUM()
- GROUP BY
- HAVING
- INNER JOIN
- Multi-table JOINs

---

# ⭐ Key Features

- Designed a relational database using Fact and Dimension tables.
- Solved 30 real-world business SQL queries.
- Performed salary, hiring trend, and skill demand analysis.
- Used multiple INNER JOINs across three related tables.
- Implemented Aggregate Functions, GROUP BY, HAVING, ORDER BY, and LIMIT.
- Documented the complete project with schema, queries, datasets, and screenshots.

---

# 📂 Project Structure

```text
SQL-Job-Market-Analysis
│
├── README.md
├── schema.sql
├── queries.sql
│
├── Data
│   ├── Job_Postings_Fact_100.csv
│   ├── Skills_Dim_30.csv
│   └── Skills_Job_Dim_500.csv
│
└── Screenshots
    ├── database_tables.png
    ├── query_results.png
    ├── highest_paying_jobs.png
    ├── most_demanded_skills.png
    ├── top_hiring_companies.png
    ├── average_salary_by_job_title.png
    ├── jobs_requiring_sql_and_python.png
    ├── skills_required_per_job.png
    └── company_skill_requirements.png
```

---

# 📸 Project Screenshots

## Database Tables

![Database Tables](Screenshots/database_tables.png)

---

## Query Results

![Query Results](Screenshots/query_results.png)

---

## Top 10 Highest Paying Jobs

![Highest Paying Jobs](Screenshots/highest_paying_jobs.png)

---

## Most Demanded Skills

![Most Demanded Skills](Screenshots/most_demanded_skills.png)

---

## Top Hiring Companies

![Top Hiring Companies](Screenshots/top_hiring_companies.png)

---

## Average Salary by Job Title

![Average Salary by Job Title](Screenshots/average_salary_by_job_title.png)

---

## Jobs Requiring SQL and Python

![Jobs Requiring SQL and Python](Screenshots/jobs_requiring_sql_and_python.png)

---

## Skills Required Per Job

![Skills Required Per Job](Screenshots/skills_required_per_job.png)

---

## Company Skill Requirements

![Company Skill Requirements](Screenshots/company_skill_requirements.png)

---

# 🎯 Learning Outcomes

Through this project, I gained hands-on experience in:

- Designing relational databases
- Understanding Primary Keys and Foreign Keys
- Working with Fact and Dimension tables
- Writing business-oriented SQL queries
- Performing data analysis using SQL
- Using Aggregate Functions and GROUP BY
- Writing multi-table INNER JOIN queries
- Solving real-world business problems using SQL
- Building and documenting a professional GitHub project

---

# 👨‍💻 Author

## Sathwik Chinta

**Aspiring Software Engineer**

### Skills

- SQL
- Java
- Python
- Data Structures & Algorithms (DSA)

---

⭐ **If you found this project helpful, consider giving it a Star on GitHub!**
