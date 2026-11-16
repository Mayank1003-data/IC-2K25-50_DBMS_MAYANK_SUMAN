-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 1/Q14.sql
CREATE TABLE IF NOT EXISTS job_history (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    START_DATE DATE NOT NULL,
    END_DATE DATE NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    DEPARTMENT_ID DECIMAL(4,0) DEFAULT NULL,

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
) ENGINE=InnoDB;

-- Original practical: Assignment 1/Q15.sql
-- Composite foreign-key example from the original practical.
-- The referenced departments table must have a matching UNIQUE/PRIMARY KEY
-- on (department_id, manager_id) before this statement can run.
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary DECIMAL(8,2) DEFAULT NULL,
    commission_pct DECIMAL(2,2) DEFAULT NULL,
    manager_id DECIMAL(6,0) DEFAULT NULL,
    department_id DECIMAL(4,0) DEFAULT NULL,
    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id)
) ENGINE=InnoDB;

-- Original practical: Assignment 1/Q16.sql
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    EMAIL VARCHAR(25) NOT NULL,
    PHONE_NUMBER VARCHAR(20) DEFAULT NULL,
    HIRE_DATE DATE NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,
    COMMISSION_PCT DECIMAL(2,2) DEFAULT NULL,
    MANAGER_ID DECIMAL(6,0) DEFAULT NULL,
    DEPARTMENT_ID DECIMAL(4,0) DEFAULT NULL,

    FOREIGN KEY (DEPARTMENT_ID)
        REFERENCES departments(DEPARTMENT_ID),

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
) ENGINE=InnoDB;
