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

-- Level 1 — Basic filtering

-- Q1. Display employees who work in the CSE department.

SELECT * FROM employee WHERE department='CSE';

-- Q2. Display employees whose salary is greater than 60000.

SELECT * FROM employee WHERE salary>60000;

-- Q3. Display employees whose salary is less than 50000.

SELECT * FROM employee WHERE salary<50000;

-- Q4. Display employees whose age is exactly 29.

SELECT * FROM employee WHERE age=29;

-- Q5. Display the employee whose name is Namrata Gholave.

SELECT * FROM employee WHERE name='Namrata Gholave';


--Level 2 — Comparison operators

-- Q6. Display employees whose salary is greater than or equal to 60000.

SELECT * FROM employee WHERE salary>=60000;

-- Q7. Display employees whose age is less than 30.

SELECT * FROM employee WHERE age<30;

-- Q8. Display employees whose age is greater than or equal to 30.

SELECT * FROM employee WHERE age>=30;

-- Q9. Display employees whose salary is not equal to 50000.

SELECT * FROM employee WHERE salary != 50000;

-- Q10. Display employees whose department is not IT.

SELECT * FROM employee WHERE department != 'IT';

-- Level 3 — Choose specific columns

-- Don't always use SELECT *.

-- Q11. Display only name and salary for employees whose salary is greater than 80000.

SELECT name,salary FROM employee WHERE salary >80000;

-- Q12. Display name, department, and salary for employees working in CSE.

SELECT name,department,salary FROM employee WHERE department='CSE';

-- Q13. Display name and age for employees whose age is less than 30.

SELECT name,age FROM employee WHERE age<30;

-- Level 4 — Slightly more practical

-- Q14. Find employees earning more than 100000.

SELECT * FROM employee WHERE salary>100000;

-- Q15. Find employees earning less than 100000.

SELECT * FROM employee WHERE salary<100000;

-- Q16. Find employees whose department is Instrumentation.

SELECT * FROM employee WHERE department='Instrumentation';

-- Q17. Find employees whose salary is exactly 90000.

SELECT * FROM employee WHERE salary=90000;

-- Q18. Find employees whose age is 31.

SELECT * FROM employee WHERE age=31;
