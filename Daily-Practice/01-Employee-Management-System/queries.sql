/*
    Project: Employee Management System
    File: queries.sql
    Purpose: Practice SQL queries on employee data
*/

USE employee_management;


-- ============================================
-- 1. DISPLAY ALL EMPLOYEES
-- ============================================

SELECT * FROM employee;


-- ============================================
-- 2. DISPLAY SPECIFIC COLUMNS
-- ============================================

SELECT name, department, salary FROM employee;


-- ============================================
-- 3. DISPLAY EMPLOYEE NAMES
-- ============================================

SELECT name FROM employee;


-- ============================================
-- 4. WHERE CLAUSE
-- ============================================

-- Display employees from IT department

SELECT * FROM employee WHERE department='IT';

-- Display employees whose salary is greater than 50000
SELECT * FROM employee WHERE salary>50000;

-- Display employees whose age is greater than 30
SELECT * FROM employee WHERE age>30;
