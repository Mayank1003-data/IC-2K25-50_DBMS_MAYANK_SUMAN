-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 2/Q1.sql
SELECT
    first_name AS `First Name`,
    last_name AS `Last Name`
FROM employees;

-- Original practical: Assignment 2/Q2.sql
SELECT DISTINCT department_id
FROM employees;

-- Original practical: Assignment 2/Q3.sql
SELECT *
FROM employees
ORDER BY first_name DESC;

-- Original practical: Assignment 2/Q4.sql
SELECT
    first_name,
    last_name,
    salary,
    salary * 0.15 AS PF
FROM employees;

-- Original practical: Assignment 2/Q5.sql
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
ORDER BY salary ASC;
