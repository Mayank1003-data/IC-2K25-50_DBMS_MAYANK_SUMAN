-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 1/Q6.sql
CREATE TABLE IF NOT EXISTS jobs(
  job_id VARCHAR(10) NOT NULL,
  job_title VARCHAR(35) NOT NULL,
  min_salary DECIMAL(6,0),
  max_salary DECIMAL(6,0),
  CHECK(max_salary <= 25000)
);

-- Original practical: Assignment 1/Q7.sql
CREATE TABLE IF NOT EXISTS countries(
  country_id VARCHAR(2),
  country_name VARCHAR(40),
  region_id DECIMAL(10,0),
  CHECK (country_name IN('Italy','India','China'))
);

-- Original practical: Assignment 1/Q8.sql
-- Demonstrates NOT NULL and date-range constraints.
CREATE TABLE IF NOT EXISTS job_history (
    employee_id DECIMAL(6,0) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id DECIMAL(4,0) NOT NULL,
    CHECK (end_date >= start_date)
);

-- Original practical: Assignment 1/Q9.sql
CREATE TABLE IF NOT EXISTS countries(
  country_id VARCHAR(2)  NOT NULL UNIQUE,
  country_name VARCHAR(40),
  region_id DECIMAL(10,0)
);

-- Original practical: Assignment 1/Q10.sql
CREATE TABLE IF NOT EXISTS jobs(
  job_id VARCHAR(10) NOT NULL UNIQUE,
  job_title VARCHAR(35) NOT NULL DEFAULT'',
  min_salary DECIMAL (6,0) DEFAULT 8000,
  max_salary DECIMAL(6,0) DEFAULT NULL
);
