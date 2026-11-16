-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 2/Q6.sql
SELECT SUM(salary) AS `Total Salary`
FROM employees;

-- Original practical: Assignment 2/Q7.sql
SELECT
    MAX(salary) AS `Maximum Salary`,
    MIN(salary) AS `Minimum Salary`
FROM employees;

-- Original practical: Assignment 2/Q8.sql
SELECT
    AVG(salary) AS `Average Salary`,
    COUNT(*) AS `Number of Employees`
FROM employees;

-- Original practical: Assignment 2/Q9.sql
SELECT COUNT(*) AS `Number of Employees`
FROM employees;

-- Original practical: Assignment 2/Q10.sql
SELECT COUNT(DISTINCT job_id) AS `Number of Jobs`
FROM employees;
