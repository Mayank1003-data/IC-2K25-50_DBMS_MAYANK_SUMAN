-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Lab_Assignment 3/Q6.sql
SELECT
    last_name,
    job_id,
    salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
  AND salary NOT IN (4500, 10000, 15000);

-- Original practical: Lab_Assignment 3/Q9.sql
SELECT DISTINCT job_id
FROM employees;

-- Original practical: Lab_Assignment 3/Q11.sql
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
