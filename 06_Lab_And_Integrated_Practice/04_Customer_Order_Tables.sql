-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: select_two_tables.sql
create database customer_order;

use customer_order;

create table customer(customer_id varchar(20), name varchar(20), address varchar(30), contact_no int(10) ,primary key(customer_id));

show tables;

desc customer;

alter table customer modify column contact_no varchar(10);

insert into customer value("13AC3", "mukesh", "bhawarkua indore, mp", 9876789051);

select * from customer;

insert into customer value("13RM4", "ramesh", "mhow indore, mp", 9876786551);

insert into customer value("13SR5", "suresh", "rajwada indore, mp", 6260786551);

select * from customer;

use customer_order;

create table orders(order_id int, name varchar(20),rate_per_unit float, quantity int, amount float,customer_id varchar(20), primary key(order_id), FOREIGN KEY(customer_id) REFERENCES customer(customer_id));

desc orders;

insert into orders value(23, "mukesh", 100, 10, 1000, "13AC3");

insert into orders value(24, "ramesh", 10, 13, 130, "13RM4");

insert into orders value(25, "suresh", 100, 17, 1700, "13SR5");

select * from orders;

SELECT * FROM customer INNER JOIN orders ON customer.customer_id = orders.customer_id;
