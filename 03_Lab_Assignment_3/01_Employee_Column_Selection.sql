-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Lab_Assignment 3/Q1.sql
SELECT
    first_name,
    last_name,
    salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

-- Original practical: Lab_Assignment 3/Q2.sql
SELECT
    first_name,
    last_name,
    department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;

-- Original practical: Lab_Assignment 3/Q3.sql
SELECT
    first_name,
    last_name,
    salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
  AND department_id IN (30, 100);

-- Original practical: Lab_Assignment 3/Q4.sql
SELECT
    first_name,
    last_name,
    hire_date
FROM employees
WHERE YEAR(hire_date) = 1987;
