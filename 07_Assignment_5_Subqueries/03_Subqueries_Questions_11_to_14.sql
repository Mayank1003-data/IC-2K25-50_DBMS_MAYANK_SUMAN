-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: subquery_assignment5/question11-14.sql
show databases;

use subquery;

show tables;

select * from employees;

alter table employees rename column post to job_id;

insert into employees values("jasmine", "tata", 6000, "warehousing", "sh_clerk", "IN", "grade 1");

insert into employees values("kim", "sohyun", 6000, "warehousing", "sh_clerk", "KO", "grade 1");

insert into employees values("kim", "sohyun", 9000, "warehousing", "sh_clerk", "KO", "grade 1");

delete from employees where first_name ="kim";

insert into employees values("kim", "sohyun", 9000, "warehousing", "sh_clerk", "KO", "grade 1");

select first_name, last_name, salary  from employees where salary> all (select salary from employees WHERE job_id = 'SH_CLERK') order by salary asc;

insert into employees values("park", "sujin", 60000, "warehousing", "supervisor", "KO", "grade 2");

insert into employees values("aouki", "nakayama", 500000, "IT", "supervisor", "JA", "grade 2");

insert into employees values("kenta", "yamaguchi", 300000, "finance", "supervisor", "JA", "grade 2");

SELECT first_name, last_name FROM employees WHERE job_id <> 'supervisor';

ALTER TABLE employees ADD emp_id INT AUTO_INCREMENT PRIMARY KEY;

alter table employees drop column emp_id;

alter table employees add emp_id int;

update employees set emp_id= 19246 where first_name = "ethen";

update employees set emp_id= 19246 where first_name = "ethan";

update employees set emp_id= 19247 where first_name = "sofie";

update employees set emp_id= 19248 where first_name = "alex";

update employees set emp_id= 23678 where first_name = "carl";

update employees set emp_id= 23679 where first_name = "willliam";

update employees set emp_id= 23677 where first_name = "min";

update employees set emp_id= 56473 where first_name = "lily";

update employees set emp_id= 56474 where first_name = "kyle";

update employees set emp_id= 19249 where first_name = "aouki";

update employees set emp_id= 78965 where first_name = "park";

update employees set emp_id= 78966 where first_name = "kim";

update employees set emp_id= 78967 where first_name = "jasmine";

update employees set emp_id= 23676 where first_name = "kenta";

select * from employees;

update employees set emp_id= 23679 where first_name = "william";

ALTER TABLE employees modify emp_id INT  PRIMARY KEY;

desc employees;

select emp_id, first_name, last_name, department from employees;

select emp_id, first_name, last_name, salary from employees e where salary>(select avg(salary) from employees where department =e.department);

select * from employees;
