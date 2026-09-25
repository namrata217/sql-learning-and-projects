/*
    Project: Employee Management System
    Database: MySQL 8.0
    Purpose: SQL learning and hands-on practice
*/

-- ============================================
-- 1. CREATE DATABASE
-- ============================================


CREATE DATABASE employee_management;

-- Select the database
USE employee_management;


-- ============================================
-- 2. CREATE EMPLOYEE TABLE
-- ============================================

CREATE TABLE employee
(   
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL, 
    email varchar(100) UNIQUE, 
    age INT CHECK(age>=18),
    department VARCHAR(50) NOT NULL, 
    salary INT,
    joining_date DATE
  );

/*
SQL	Purpose
INT	Numeric value
VARCHAR	Text
DATE	Date
PRIMARY KEY	Unique employee identifier
AUTO_INCREMENT	Automatically generates ID
NOT NULL	Value is required
UNIQUE	Prevents duplicate email
CHECK	Validates age

USE employee_management;

SHOW TABLES;
DESC employee;
*/
SHOW TABLES;
DESC employee;
