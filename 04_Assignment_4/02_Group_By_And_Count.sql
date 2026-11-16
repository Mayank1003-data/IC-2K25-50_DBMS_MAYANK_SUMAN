-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 4/Q7.sql
SELECT
    job_id,
    COUNT(*) AS `Number of Employees`
FROM employees
GROUP BY job_id;

-- Original practical: Assignment 4/Q9.sql
SELECT
    manager_id,
    MIN(salary) AS `Lowest Salary`
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- Original practical: Assignment 4/Q10.sql
SELECT
    department_id,
    SUM(salary) AS `Total Salary`
FROM employees
GROUP BY department_id;
