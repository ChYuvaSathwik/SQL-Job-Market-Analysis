-- =====================================================
-- Project: SQL Job Market Analysis
-- Author : Sathwik Chinta
-- Database: MySQL
-- =====================================================

-- =====================================================
-- TABLE 1 : job_postings_fact
-- Stores job posting information
-- =====================================================

CREATE TABLE `job_postings_fact` (
  `job_id` int NOT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `job_location` varchar(100) DEFAULT NULL,
  `salary_year_avg` decimal(10,2) DEFAULT NULL,
  `job_schedule_type` varchar(50) DEFAULT NULL,
  `job_work_from_home` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- =====================================================
-- TABLE 2 : skills_dim
-- Stores all technical skills
-- =====================================================

CREATE TABLE `skills_dim` (
  `skill_id` int NOT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- =====================================================
-- TABLE 3 : skills_job_dim
-- Bridge table connecting jobs and skills
-- Represents a Many-to-Many relationship
-- =====================================================

CREATE TABLE `skills_job_dim` (
  `job_id` int NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`job_id`,`skill_id`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `skills_job_dim_ibfk_1`
    FOREIGN KEY (`job_id`)
    REFERENCES `job_postings_fact` (`job_id`),

  CONSTRAINT `skills_job_dim_ibfk_2`
    FOREIGN KEY (`skill_id`)
    REFERENCES `skills_dim` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
