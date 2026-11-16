-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: DBMS-lab-01.sql
show databases;

create database mydb;

select database();

use mydb;

create table students(roll int, name varchar(30), class varchar(20), marks float, primary key(roll));

insert into students(roll, name, class, marks) value(06, "akshara", "mca III", 98);

insert into students value(11, "anjali", "mca III", 88);

select * from students;
