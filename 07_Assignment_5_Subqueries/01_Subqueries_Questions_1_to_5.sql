-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: subquery_assignment5/first5.sql
create database subquery;

use subquery;

create table employees(first_name varchar(20), last_name varchar(20), salary float, department varchar(20),post varchar(20));

insert into employees value("ethan", "blackwood", 900000, "IT", "manager");

insert into employees value("carl", "bell", 600000, "finance", "manager");

insert into employees value("william", "bull", 80000, "finance", "team leader");

insert into employees value("sofie", "stewart", 90000, "IT", "team leader");

insert into employees value("alex", "carpanter", 7000, "IT", "intern");

insert into employees value("min", "heseung", 6900, "finance", "intern");

insert into employees value("lily", "isabella", 340000, "HR", "manager");

insert into employees value("kyle", "williams", 5000, "HR", "intern");

select * from employees;

select * from employees where salary>( select salary from employees where last_name ="bull");

select first_name, last_name from employees where department="IT";

alter table employees add location varchar(10);

update employees set location ="US" where department ="IT";

update employees set location ="KO" where first_name = "min";

update employees set location ="US" where first_name = "kyle";

update employees set location ="IN" where last_name = "bell";

update employees set location ="IN" where last_name = "bull";

update employees set location ="US" where first_name = "lily";

SELECT * FROM EMPLOYEES;

SELECT first_name, last_name FROM EMPLOYEES where post != "manager" and location = "US";

SELECT first_name, last_name FROM EMPLOYEES where post != "manager" and department in (select department from employees where location= "US");

SELECT first_name, last_name FROM EMPLOYEES where post = "manager" ;

SELECT first_name, last_name FROM EMPLOYEES where salary>( select avg(salary) from employees);

SELECT first_name, last_name, salary FROM EMPLOYEES where salary>( select avg(salary) from employees);
