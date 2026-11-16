-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: subquery_assignment5/question6-10.sql
show databases;

use subquery;

show tables;

desc employees;

alter table employees add job_grade varchar(7);

update employees set job_grade= 'grade 1' where post= "intern";

update employees set job_grade= 'grade 2' where post= "manager";

update employees set job_grade= 'grade 2' where post= "team leader";

update employees set job_grade= 'grade 3' where post= "manager";

select * from employees;

select first_name, last_name, salary from employees where salary= (select min(salary) from employees where post= employees.post);

select first_name, last_name, salary from employees e where salary= (select min(salary) from employees where job_grade= e.job_grade);

SELECT first_name, last_name, salary from employees where department= "IT" and salary >(select avg(salary) from employees);

SELECT first_name, last_name, salary from employees where salary >(select salary from employees where last_name= "bell");

SELECT first_name, last_name, salary from employees where salary=(select min(salary) from employees );

SELECT first_name, last_name, salary from employees e where salary=(select min(salary) from employees where department= e.department );

SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees );
