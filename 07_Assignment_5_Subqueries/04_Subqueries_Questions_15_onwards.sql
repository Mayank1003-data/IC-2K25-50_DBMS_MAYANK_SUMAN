-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: subquery_assignment5/last6.sql
select * from employees where emp_id % 2 = 0;

SELECT * FROM ( SELECT employees.*, ROW_NUMBER() OVER (ORDER BY emp_id) AS row_num FROM employees ) AS e WHERE row_num % 2 = 0;

SELECT salary FROM ( SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk FROM employees) AS ranked_salaries WHERE rnk = 5;

SELECT salary FROM ( SELECT salary, DENSE_RANK() OVER (ORDER BY salary asc) AS rnk FROM employees) AS ranked_salaries WHERE rnk = 4;

SELECT * FROM ( SELECT * FROM employees order by emp_id desc limit 10) as subquery ORDER BY emp_id ASC;

SELECT salary FROM ( SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk FROM employees) AS ranked_salaries WHERE rnk <4;

SELECT salary FROM ( SELECT salary, DENSE_RANK() OVER (ORDER BY salary asc) AS rnk FROM employees) AS ranked_salaries WHERE rnk < 4;
