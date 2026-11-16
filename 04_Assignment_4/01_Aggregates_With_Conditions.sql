-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 4/Q4.sql
SELECT MAX(salary) AS `Maximum Programmer Salary`
FROM employees
WHERE job_id = 'IT_PROG';

-- Original practical: Assignment 4/Q5.sql
SELECT
    AVG(salary) AS `Average Salary`,
    COUNT(*) AS `Number of Employees`
FROM employees
WHERE department_id = 90;

-- Original practical: Assignment 4/Q6.sql
SELECT
    MAX(salary) AS `Highest Salary`,
    MIN(salary) AS `Lowest Salary`,
    SUM(salary) AS `Total Salary`,
    AVG(salary) AS `Average Salary`
FROM employees;

-- Original practical: Assignment 4/Q8.sql
SELECT
    MAX(salary) - MIN(salary) AS `Salary Difference`
FROM employees;
