-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 4/Q11.sql
SELECT
    job_id,
    AVG(salary) AS `Average Salary`
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

-- Original practical: Assignment 4/Q12.sql
SELECT
    job_id,
    SUM(salary) AS `Total Salary`,
    MAX(salary) AS `Maximum Salary`,
    MIN(salary) AS `Minimum Salary`,
    AVG(salary) AS `Average Salary`
FROM employees
WHERE department_id = 90
GROUP BY job_id;
