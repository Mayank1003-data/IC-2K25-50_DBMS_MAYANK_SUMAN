-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: online_lab1.sql
show databases;

use dblab1;

show tables;

SELECT * FROM countries;

SELECT country_id, country_name FROM countries;

SELECT count_id, count_name FROM countries;

SELECT * FROM countries where count_id=91;

SELECT * FROM countries where count_id=92;

SELECT * FROM jobs WHERE max_salary <= 25000;

insert into countries values(81, "usa", "us-ca");

insert into countries values(61, "canada", "ca-on");

insert into countries values(51, "australia", "au_nsw");

select * from countries;

SELECT MIN(count_id) FROM countries;

SELECT Max(count_id) FROM countries;

SELECT avg(count_id) FROM countries;

select * from countries where count_name like '%i';
