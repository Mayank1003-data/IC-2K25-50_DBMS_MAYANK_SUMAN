-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: online_lab2.sql
use dblab1;

INSERT INTO employee VALUES (1, 'Rahul', 'IT', 60000, 'Indore', 28), (2, 'Amit', 'HR', 45000, 'Bhopal', 32), (3, 'Priya', 'IT', 75000, 'Indore', 26), (4, 'Neha', 'Finance', 55000, 'Ujjain', 30), (5, 'Raj', 'HR', 50000, 'Indore', 29), (6, 'Sneha', 'Finance', 70000, 'Bhopal',27), (7, 'Vikas', 'IT', 65000, 'Ujjain', 31);

select * from employee;

select distinct department from employee;

select department from employee;

select name, salary from employee order by salary;

select name, salary from employee order by salary desc;

select * from employee order by name;

select * from employee order by age;

select department, avg(salary) from employee group by department;

select department, count(*) as total_employees from employee group by department having count(*)>2;

select department, count(*) as total_employees from employee group by department having count(*)=2;

select department, avg(salary) from employee group by department having avg(salary)>60000;

select department, avg(salary) from employee group by department having avg(salary)<60000;

select * from employee limit 3 offset 2;

select name, salary, age from employee;

select name as emp_name, salary as emp_salary, age from employee;
