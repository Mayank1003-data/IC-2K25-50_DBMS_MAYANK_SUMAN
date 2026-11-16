-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 2/Q13.sql
SELECT 171 * 214 + 625 AS Result;

-- Original practical: Assignment 2/Q17.sql
SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';

-- Original practical: Assignment 2/Q18.sql
SELECT *
FROM employees
LIMIT 10;

-- Original practical: Assignment 2/Q19.sql
SELECT
    employee_id,
    first_name,
    last_name,
    ROUND(salary / 12, 2) AS `Monthly Salary`
FROM employees;
