-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Lab_Assignment 3/Q5.sql
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
  AND first_name LIKE '%c%';

-- Original practical: Lab_Assignment 3/Q7.sql
SELECT last_name
FROM employees
WHERE LENGTH(last_name) = 6;

-- Original practical: Lab_Assignment 3/Q8.sql
SELECT last_name
FROM employees
WHERE last_name LIKE '__e%';
