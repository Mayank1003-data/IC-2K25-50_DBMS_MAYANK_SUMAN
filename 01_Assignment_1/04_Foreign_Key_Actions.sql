-- DBMS Lab | Mayank Suman | IC-2K25-50
-- Grouped practical file: each section preserves a separate original question.
-- Read the section heading before execution. Some sections require their own
-- sample tables/database; do not blindly execute every section in one batch.



-- ====================================================================-- Original practical: Assignment 1/Q17.sql
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Original practical: Assignment 1/Q18.sql
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- Original practical: Assignment 1/Q19.sql
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    JOB_ID VARCHAR(10) DEFAULT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;

-- Original practical: Assignment 1/Q20.sql
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID DECIMAL(6,0) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,

    FOREIGN KEY (JOB_ID)
        REFERENCES jobs(JOB_ID)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
