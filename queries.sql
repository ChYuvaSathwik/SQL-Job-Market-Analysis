-- =====================================================
-- BUSINESS QUESTION 1
-- Count the total number of job postings
-- =====================================================

SELECT COUNT(*) AS total_jobs
FROM job_postings_fact;



-- =====================================================
-- BUSINESS QUESTION 2
-- Find all unique job titles
-- =====================================================

SELECT DISTINCT job_title
FROM job_postings_fact;



-- =====================================================
-- BUSINESS QUESTION 3
-- Display jobs with salary greater than 150000
-- =====================================================

SELECT *
FROM job_postings_fact
WHERE salary_year_avg > 150000;



-- =====================================================
-- BUSINESS QUESTION 4
-- Find the Top 10 highest-paying jobs
-- =====================================================

SELECT job_title,
       company_name,
       salary_year_avg
FROM job_postings_fact
ORDER BY salary_year_avg DESC
LIMIT 10;



-- =====================================================
-- BUSINESS QUESTION 5
-- Find the highest salary
-- =====================================================

SELECT MAX(salary_year_avg) AS highest_salary
FROM job_postings_fact;



-- =====================================================
-- BUSINESS QUESTION 6
-- Find the lowest salary
-- =====================================================

SELECT MIN(salary_year_avg) AS lowest_salary
FROM job_postings_fact;



-- =====================================================
-- BUSINESS QUESTION 7
-- Find the average salary
-- =====================================================

SELECT AVG(salary_year_avg) AS average_salary
FROM job_postings_fact;



-- =====================================================
-- BUSINESS QUESTION 8
-- Find all remote jobs
-- =====================================================

SELECT *
FROM job_postings_fact
WHERE job_work_from_home = 1;









-- =====================================================
-- BUSINESS QUESTION 9
-- Count how many jobs are available for each job title
-- =====================================================

SELECT job_title,
       COUNT(*) AS number_of_jobs
FROM job_postings_fact
GROUP BY job_title;



-- =====================================================
-- BUSINESS QUESTION 10
-- Count how many jobs each company has posted
-- =====================================================

SELECT company_name,
       COUNT(*) AS total_jobs
FROM job_postings_fact
GROUP BY company_name;



-- =====================================================
-- BUSINESS QUESTION 11
-- Find the average salary offered by each company
-- =====================================================

SELECT company_name,
       AVG(salary_year_avg) AS average_salary
FROM job_postings_fact
GROUP BY company_name;



-- =====================================================
-- BUSINESS QUESTION 12
-- Count jobs available in each location
-- =====================================================

SELECT job_location,
       COUNT(*) AS total_jobs
FROM job_postings_fact
GROUP BY job_location;



-- =====================================================
-- BUSINESS QUESTION 13
-- Count jobs by schedule type
-- =====================================================

SELECT job_schedule_type,
       COUNT(*) AS total_jobs
FROM job_postings_fact
GROUP BY job_schedule_type;



-- =====================================================
-- BUSINESS QUESTION 14
-- Find the highest salary offered by each company
-- =====================================================

SELECT company_name,
       MAX(salary_year_avg) AS highest_salary
FROM job_postings_fact
GROUP BY company_name;



-- =====================================================
-- BUSINESS QUESTION 15
-- Find the average salary for each job title
-- =====================================================

SELECT job_title,
       AVG(salary_year_avg) AS average_salary
FROM job_postings_fact
GROUP BY job_title;






-- =====================================================
-- BUSINESS QUESTION 16
-- Which skills are required the most?
-- =====================================================

SELECT t1.skill_name,
       COUNT(*) AS total_jobs
FROM skills_dim AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.skill_id = t2.skill_id
GROUP BY t1.skill_id, t1.skill_name
ORDER BY total_jobs DESC;



-- =====================================================
-- BUSINESS QUESTION 17
-- Which jobs require SQL?
-- =====================================================

SELECT DISTINCT t1.job_title
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'SQL';



-- =====================================================
-- BUSINESS QUESTION 18
-- Which jobs require Python?
-- =====================================================

SELECT DISTINCT t1.job_title
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'Python';



-- =====================================================
-- BUSINESS QUESTION 19
-- Which jobs require both SQL and Python?
-- =====================================================

SELECT t1.job_title
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name IN ('SQL','Python')
GROUP BY t1.job_id, t1.job_title
HAVING COUNT(DISTINCT t3.skill_name) = 2;



-- =====================================================
-- BUSINESS QUESTION 20
-- List all skills required for each job
-- =====================================================

SELECT t1.job_title,
       t3.skill_name
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
ORDER BY t1.job_title;



-- =====================================================
-- BUSINESS QUESTION 21
-- Count how many jobs require each skill
-- =====================================================

SELECT t3.skill_name,
       COUNT(*) AS total_jobs
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
GROUP BY t3.skill_id, t3.skill_name
ORDER BY total_jobs DESC;



-- =====================================================
-- BUSINESS QUESTION 22
-- Which companies are hiring for SQL skills?
-- =====================================================

SELECT DISTINCT t1.company_name
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'SQL';



-- =====================================================
-- BUSINESS QUESTION 23
-- Which companies are hiring for Python skills?
-- =====================================================

SELECT DISTINCT t1.company_name
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'Python';



-- =====================================================
-- BUSINESS QUESTION 24
-- Count the number of skills required for each job
-- =====================================================

SELECT t1.job_title,
       COUNT(*) AS total_skills
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
GROUP BY t1.job_id, t1.job_title
ORDER BY total_skills DESC;



-- =====================================================
-- BUSINESS QUESTION 25
-- Which jobs require Excel?
-- =====================================================

SELECT DISTINCT t1.job_title
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'Excel';




-- =====================================================
-- BUSINESS QUESTION 26
-- Find all skills required for "Data Analyst" jobs
-- =====================================================

SELECT DISTINCT t3.skill_name
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t1.job_title = 'Data Analyst';



-- =====================================================
-- BUSINESS QUESTION 27
-- Find all jobs that require AWS
-- =====================================================

SELECT DISTINCT t1.job_title
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
WHERE t3.skill_name = 'AWS';



-- =====================================================
-- BUSINESS QUESTION 28
-- Find all companies hiring Data Analysts
-- =====================================================

SELECT DISTINCT company_name
FROM job_postings_fact
WHERE job_title = 'Data Analyst';



-- =====================================================
-- BUSINESS QUESTION 29
-- Count how many different skills each company requires
-- =====================================================

SELECT t1.company_name,
       COUNT(DISTINCT t3.skill_id) AS total_skills
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
GROUP BY t1.company_name
ORDER BY total_skills DESC;



-- =====================================================
-- BUSINESS QUESTION 30
-- Find the Top 5 most in-demand skills
-- =====================================================

SELECT t3.skill_name,
       COUNT(*) AS total_jobs
FROM job_postings_fact AS t1
INNER JOIN skills_job_dim AS t2
    ON t1.job_id = t2.job_id
INNER JOIN skills_dim AS t3
    ON t2.skill_id = t3.skill_id
GROUP BY t3.skill_id, t3.skill_name
ORDER BY total_jobs DESC
LIMIT 5;










