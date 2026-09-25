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

-- Extra Practice — Do these yourself

-- A. Find employees whose salary is greater than or equal to ₹90,000.

SELECT * FROM employee WHERE salary>=90000;

-- B. Find employees whose salary is less than or equal to ₹50,000.

SELECT * FROM employee WHERE salary<=50000;

-- C. Display only name and department for employees whose age is greater than 30.

SELECT name,department FROM employee WHERE age>30;

-- D. Find the employee whose age is exactly 29.

SELECT * FROM employee WHERE age=29;

-- E. Display name, age, and salary for employees whose salary is less than ₹100,000.

SELECT name,age,salary FROM employee WHERE salary<100000;

-- F. Find employees whose age is greater than or equal to 31.

SELECT * FROM employee WHERE age >=31;

-- Q19 Find employees whose salary is greater than 50,000 AND department is IT.

SELECT * FROM employee WHERE salary > 50000 AND department='IT';

--q20 Find employees whose department is CSE OR IT.

SELECT * FROM employee WHERE department='CSE' OR department='IT';

-- Q21 Find employees whose salary is greater than 50,000 AND age is less than 30.
SELECT * FROM employee WHERE salary>50000 and age<30;

-- Q22 Find employees whose department is CSE OR salary is greater than 100,000.
SELECT * FROM employee WHERE department='CSE' OR salary>100000;

-- Q23. Find employees whose department is IT AND salary is greater than 55,000.
SELECT * FROM employee WHERE department='IT' AND salary>55000;

-- Q24. Find employees whose age is less than 30 OR salary is greater than 100,000.
SELECT * FROM employee WHERE age<30 OR salary>100000;

-- Q25. Find employees whose department is CSE AND age is exactly 29.
SELECT * FROM employee WHERE department='CSE' AND age=29;

-- Q26. Find employees who work in IT AND have salary greater than 50,000.
SELECT * FROM employee WHERE department='IT' AND salary>50000;

-- Q27. Find employees who are older than 30 OR have salary less than 50,000.
SELECT * FROM employee WHERE age>30 OR salary<50000;

-- Q28. Find employees who work in CSE OR IT AND have salary greater than 50,000.
SELECT * FROM employee WHERE salary>50000 AND (department='CSE' OR department='IT'); 

-- Q29. Find employees whose salary is less than 90,000.
SELECT * FROM employee WHERE salary<90000;

-- Q30. Find employees whose salary is greater than or equal to 90,000.
SELECT * FROM employee WHERE salary>=90000;


-- ============================================
-- 6. IN OPERATOR
-- ============================================

/*IN — Theory

Definition:
IN is used when you want to check whether a column matches one value from a list of multiple values.

Instead of writing:

WHERE department = 'CSE'
OR department = 'IT'

you can write:

WHERE department IN ('CSE', 'IT');

Both mean the same thing.*/

-- Q31 Find employees whose department is CSE or IT.

--Write the query using IN.
SELECT * FROM employee WHERE department IN ('CSE','IT');

-- Q32. Find employees whose department is HR, Finance, or Sales.
SELECT * FROM employee WHERE department IN('HR','Finance','Sales');

-- Q33. Find employees whose age is 26, 29, or 31.
SELECT * FROM employee WHERE age IN(26,29,31);

-- Q34. Find employees whose salary is 45,000, 50,000, or 90,000.
SELECT * FROM employee WHERE salary IN(45000,50000,90000);

-- Q35. Display name, department, and salary of employees
-- whose department is CSE, IT, or Finance.
SELECT name,department,salary FROM employee WHERE department IN('CSE','IT','Finance');
