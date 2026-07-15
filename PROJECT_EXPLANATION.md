# SQL Job Market Analysis - Project Explanation

## Project Objective

The goal of this project is to analyze job posting data using MySQL and answer real-world business questions related to salaries, hiring trends, and technical skills.

---

## Business Problem

Organizations collect thousands of job postings but need insights such as:

- Which jobs offer the highest salaries?
- Which skills are most in demand?
- Which skills have the highest average salary?
- Which skills provide the best balance of demand and salary?

This project answers these questions using SQL.

---

## Dataset

The project uses three relational tables.

### 1. job_postings_fact

Stores job-related information such as:

- Job ID
- Job Title
- Company Name
- Job Location
- Average Salary
- Job Type
- Work From Home Status

### 2. skills_dim

Stores all available technical skills.

Examples:

- SQL
- Python
- Excel
- Tableau
- Power BI
- AWS

### 3. skills_job_dim

Bridge table that connects jobs with their required skills.

---

## Database Design

The database follows normalization principles by separating job information and skill information into different tables.

This reduces duplicate data and supports a Many-to-Many relationship between jobs and skills.

---

## Entity Relationship (ERD)

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
- `skills_job_dim` acts as a bridge table that creates a Many-to-Many relationship between `job_postings_fact` and `skills_dim`.

---

## SQL Concepts Used

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT
- Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- INNER JOIN
- Multi-table JOINs

---

## Business Questions Answered Using SQL

1. Count the total number of job postings.
2. Find all unique job titles.
3. Display jobs with a salary greater than 150000.
4. Find the Top 10 highest-paying jobs.
5. Find the highest salary.
6. Find the lowest salary.
7. Find the average salary.
8. Find all remote jobs.
9. Count how many jobs are available for each job title.
10. Count how many jobs each company has posted.
11. Find the average salary offered by each company.
12. Count jobs available in each location.
13. Count jobs by schedule type.
14. Find the highest salary offered by each company.
15. Find the average salary for each job title.
16. Which skills are required the most?
17. Which jobs require SQL?
18. Which jobs require Python?
19. Which jobs require both SQL and Python?
20. List all skills required for each job.
21. Count how many jobs require each skill.
22. Which companies are hiring for SQL skills?
23. Which companies are hiring for Python skills?
24. Count the number of skills required for each job.
25. Which jobs require Excel?
26. Find all skills required for Data Analyst jobs.
27. Find all jobs that require AWS.
28. Find all companies hiring Data Analysts.
29. Count how many different skills each company requires.
30. Find the Top 5 most in-demand skills.

---

## Key Learning Outcomes

Through this project, I learned:

- Database normalization
- Fact and Dimension tables
- Primary Keys and Foreign Keys
- Composite Primary Keys
- Many-to-Many relationships
- Writing business-oriented SQL queries
- Performing data analysis using SQL
- Using multiple INNER JOINs across tables

---

## Conclusion

This project demonstrates practical SQL skills by solving real-world business problems using a relational database. It strengthened my understanding of database design, SQL querying, relational database concepts, data analysis, and business-oriented problem solving while helping me build a professional GitHub portfolio project.
