-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 1/Q11.sql
CREATE TABLE IF NOT EXISTS countries (
    COUNTRY_ID VARCHAR(2) NOT NULL UNIQUE PRIMARY KEY,
    COUNTRY_NAME VARCHAR(40) NOT NULL,
    REGION_ID DECIMAL(10,0) NOT NULL
);

-- Original practical: Assignment 1/Q12.sql
CREATE TABLE IF NOT EXISTS countries (
    COUNTRY_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    COUNTRY_NAME VARCHAR(40) NOT NULL,
    REGION_ID DECIMAL(10,0) NOT NULL
);

-- Original practical: Assignment 1/Q13.sql
CREATE TABLE IF NOT EXISTS countries (
    COUNTRY_ID VARCHAR(2) NOT NULL,
    COUNTRY_NAME VARCHAR(40),
    REGION_ID DECIMAL(10,0) NOT NULL,
    PRIMARY KEY (COUNTRY_ID, REGION_ID)
);
