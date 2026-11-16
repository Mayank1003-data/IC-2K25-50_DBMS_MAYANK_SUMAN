-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 2/Q11.sql
SELECT UPPER(first_name) AS `First Name`
FROM employees;

-- Original practical: Assignment 2/Q12.sql
SELECT
    first_name,
    SUBSTRING(first_name, 1, 3) AS `First 3 Characters`
FROM employees;

-- Original practical: Assignment 2/Q14.sql
SELECT CONCAT(first_name, ' ', last_name) AS `Employee Name`
FROM employees;

-- Original practical: Assignment 2/Q15.sql
SELECT TRIM(first_name) AS `First Name`
FROM employees;

-- Original practical: Assignment 2/Q16.sql
SELECT
    first_name,
    last_name,
    LENGTH(first_name) AS `First Name Length`,
    LENGTH(last_name) AS `Last Name Length`
FROM employees;
