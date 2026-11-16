-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 4/Q13.sql
SELECT
    job_id,
    MAX(salary) AS `Maximum Salary`
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

-- Original practical: Assignment 4/Q14.sql
SELECT
    department_id,
    AVG(salary) AS `Average Salary`
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;
