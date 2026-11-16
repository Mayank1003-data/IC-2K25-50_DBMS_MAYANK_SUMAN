-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 1/country.sql
-- 1. Create the table structure
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT
);

-- 2. Insert sample data into the table
INSERT INTO countries (country_id, country_name, region_id) VALUES
(1, 'India', 103),
(2, 'United Kingdom', 102),
(3, 'United States', 101),
(4, 'Australia', 104),
(5, 'Brazil', 105);

-- 3. Select the data to get the final OUTPUT
SELECT * FROM countries;





DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS dup_countries;

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT
);

INSERT INTO countries (country_id, country_name, region_id) VALUES
(1, 'United States', 101),
(2, 'United Kingdom', 102),
(3, 'India', 103),
(4, 'Australia', 104),
(5, 'Brazil', 105);


CREATE TABLE dup_countries LIKE countries;

INSERT INTO dup_countries (country_id, country_name, region_id) VALUES
(1, 'Canada', 201),
(2, 'Japan', 202),
(3, 'Germany', 203);

SELECT * FROM countries;
SELECT * FROM dup_countries;

-- Original practical: Assignment 1/it exists.sql
DROP TABLE IF EXISTS countries;

-- 1. Create the table structure
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT
);

-- 2. Insert sample data into the table
INSERT INTO countries (country_id, country_name, region_id) VALUES
(1, 'India', 103),
(2, 'United Kingdom', 102),
(3, 'United States', 101),
(4, 'Australia', 104),
(5, 'Brazil', 105);

-- 3. Select the data to get the final OUTPUT
SELECT * FROM countries;
