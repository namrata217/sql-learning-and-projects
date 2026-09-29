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

--level1 completed
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
/*BETWEEN — Theory

BETWEEN is used to find values within a range, including both the starting and ending values.

Example:

SELECT *
FROM employee
WHERE salary BETWEEN 50000 AND 90000;

This means:

salary >= 50000 AND salary <= 90000

So BETWEEN is especially useful for:

salary ranges
age ranges
dates
other numeric ranges*/

-- Write the five queries in your queries.sql:

-- Salary between 50,000 and 90,000
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 90000;
-- Age between 25 and 30
SELECT * FROM employee WHERE age BETWEEN 25 AND 30;
-- Name and salary where salary is between 45,000 and 65,000
SELECT name,salary FROM employee WHERE salary BETWEEN  45000 AND 65000;
-- Age between 28 and 35
SELECT * FROM employee WHERE age BETWEEN 28 AND 35;
-- Name, department, and salary where salary is between 50,000 and 1,00,000
SELECT name,department,salary FROM employee WHERE salary BETWEEN 50000 AND 100000;

-- ============================================
-- 8. LIKE OPERATOR
-- ============================================

/*We'll do one complete set of 5 questions (Q41–Q45), just like we decided.

LIKE is used for pattern matching, for example:

WHERE name LIKE 'A%'

means name starts with A.

WHERE name LIKE '%a'

means name ends with a.

WHERE name LIKE '%it%'

means the name contains "it".*/

-- Q41. Find employees whose name starts with A.
SELECT * FROM employee WHERE name LIKE 'A%';
-- Q42. Find employees whose name ends with a.
SELECT * FROM employee WHERE name LIKE '%a';
-- Q43. Find employees whose name contains a anywhere.
SELECT * FROM employee WHERE name LIKE '%a%';
-- Q44. Find employees whose department starts with I.
SELECT * FROM employee WHERE department LIKE 'I%';
-- Q45. Display name and email of employees whose email ends with gmail.com.
SELECT name,email FROM employee WHERE email LIKE '%gmail.com';


-- ============================================
-- 9. DISTINCT
-- ============================================
/*

DISTINCT is used to return unique values and remove duplicates.

For example:

SELECT DISTINCT department
FROM employee;

Instead of showing the department for every employee, it shows each department only once.

*/

--Q46. Display all unique departments from the employee table.
SELECT DISTINCT department FROM employee;
--Q47. Display all unique ages of employees.
SELECT DISTINCT age FROM employee;
--Q48. Display all unique salary values.
SELECT DISTINCT salary FROM employee;

-- ============================================
-- 10. ORDER BY
-- ============================================
/*

ORDER BY is used to sort query results.

Ascending order:

ORDER BY salary ASC;

Descending order:

ORDER BY salary DESC;

Remember:

ASC → smallest → largest / A → Z
DESC → largest → smallest / Z → A
*/

-- Q49. Display all employees ordered by salary from lowest to highest.
SELECT * FROM employee ORDER BY salary ASC;

--Q50. Display all employees ordered by salary from highest to lowest.
SELECT * FROM employee ORDER BY salary DESC;

--Q51. Display employees ordered by age from youngest to oldest.
SELECT * FROM employee ORDER BY age ASC;
--Q52. Display only name and salary, ordered by salary from highest to lowest.
SELECT name,salary FROM employee ORDER BY salary DESC;
--Q53. Display employees ordered by name alphabetically (A → Z).
SELECT * FROM employee ORDER BY name ASC;
--Q54. Display name, department, and salary of all employees, ordered by salary from highest to lowest.
SELECT name,department,salary FROM employee ORDER BY salary DESC;

-- ============================================
-- 11. LIMIT
-- ============================================
/*LIMIT is returning row as per requirement*/
/* LIMIT restricts the number of rows returned by the query. */
--Q55. Display only the first 3 employees.
SELECT * FROM employee LIMIT 3;

--Q56. Display the top 3 highest-paid employees.
SELECT * FROM employee ORDER BY salary DESC LIMIT 3;
--Q57. Display the 2 youngest employees.
SELECT * FROM employee ORDER BY age ASC LIMIT 2;
--Level 2 — Filtering & Sorting completed
/*
Aggregate Functions

This is an important SQL interview topic.



COUNT() → number of rows
SUM() → total
AVG() → average
MAX() → highest value
MIN() → lowest value

*/

-- ============================================
-- 12. AGGREGATE FUNCTIONS
-- ============================================


--Q58. Find the total number of employees.
SELECT COUNT(*) FROM employee;
--Q59. Find the total salary of all employees.
SELECT SUM(salary) AS total_salary FROM employee;
--Q60. Find the average salary of all employees.
SELECT AVG(salary) AS avg_salary FROM employee;
--Q61. Find the highest salary.
SELECT MAX(salary) AS max_salary FROM employee;
--Q62. Find the lowest salary.
SELECT MIN(salary) AS min_salary FROM employee;
/*
GROUP BY is used to arrange rows into groups based on the same column value.

For example, employees can be grouped department-wise:

SELECT department
FROM employee
GROUP BY department;
Why do we use it?

We use GROUP BY with aggregate functions such as:

COUNT() — count employees in each group

SUM() — total salary of each group

AVG() — average salary of each group

MAX() — highest salary in each group

MIN() — lowest salary in each group

Example
SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department;

This gives the number of employees in each department.


When using GROUP BY, every selected column that is not inside an aggregate function should normally be included in the GROUP BY.

Correct:

SELECT department, AVG(salary)
FROM employee
GROUP BY department;

Incorrect:

SELECT department, name, AVG(salary)
FROM employee
GROUP BY department;

Here, name is neither grouped nor aggregated.

*/

-- ============================================
-- 13. GROUP BY
-- ============================================

--Q63. Find the number of employees in each department.
SELECT COUNT(*) ,department FROM employee GROUP BY department;
--Q64. Find the total salary of each department.
SELECT SUM(salary) AS total_salary ,department FROM employee GROUP BY department;
--Q65. Find the average salary of each department.
SELECT AVG(salary) AS avg_salary, department FROM employee GROUP BY department;
--Q66. Find the highest salary in each department.
SELECT MAX(salary) AS max_salary, department FROM employee GROUP BY department;
--Q67. Find the lowest salary in each department.
SELECT MIN(salary) AS min_salary, department FROM employee GROUP BY department;

/*
HAVING is used to filter groups created by GROUP BY.

Why do we need HAVING?

WHERE filters individual rows.

HAVING filters groups.

For example:

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 50000;

This means:

Group employees by department.
Calculate average salary for each department.
Keep only departments where average salary is greater than 50,000.
WHERE vs HAVING
WHERE
 ↓
Filters rows
 ↓
GROUP BY
 ↓
Creates groups
 ↓
HAVING
 ↓
Filters groups
Important

This is generally not correct:

WHERE AVG(salary) > 50000

because AVG() is an aggregate function and the aggregate result is produced after grouping.

Use:

HAVING AVG(salary) > 50000

*/
-- ============================================
-- 14. HAVING
-- ============================================

-- Q68. Find departments having more than 1 employee.
SELECT department FROM employee GROUP BY department HAVING COUNT(*)>1;
-- Q69. Find departments whose average salary is greater than 50,000.
SELECT department, AVG(salary) AS avg_salary FROM employee GROUP BY department HAVING AVG(salary)>50000;
--Q70. Find departments whose total salary is greater than 100,000.
SELECT department ,SUM(salary) AS total_salary FROM employee GROUP BY department HAVING SUM(salary)>100000;
--Q71. Find departments where the maximum salary is greater than 60,000.
SELECT department ,MAX(salary) AS max_salary FROM employee GROUP BY department HAVING MAX(salary)>60000;
--Q72. Find departments where the minimum salary is less than 50,000.
SELECT department ,MIN(salary) AS min_salary FROM employee GROUP BY department HAVING MIN(salary)<50000;

--LEVEL3 COMPLETED

/*UPDATE is used to modify existing data in a table.

Syntax
UPDATE table_name
SET column_name = new_value
WHERE condition;*/

-- ============================================
-- 15. UPDATE
-- ============================================

--Q73. Update the salary of Amit Sharma to 60,000.
UPDATE employee SET salary=60000 WHERE name='Amit Sharma';
--Q74. Update the department of Priya Patil to Finance.
UPDATE employee SET department='Finance' WHERE name='Priya Patil';
--Q75. Increase Rahul Deshmukh's salary to 70,000.
UPDATE employee SET salary=70000 WHERE name='Rahul Deshmukh';
--Q76. Update Sneha Kulkarni's age to 30.
UPDATE employee SET age=30 WHERE name='Sneha Kulkarni';
--Q77. Update Vikas Joshi's department to IT and salary to 55,000.
UPDATE employee SET department ='IT',salary=55000 WHERE name='Vikas Joshi';

/*DELETE is used to remove rows from a table.
DELETE FROM table_name
WHERE condition;*/
-- ============================================
-- 16. DELETE
-- ============================================


--Q78. Delete the employee whose name is Vikas Joshi.
DELETE FROM employee WHERE name='Vikas Joshi';
--Q79. Delete the employee whose email is priya@gmail.com.
DELETE FROM employee WHERE email='priya@gmail.com';
--Q80. Delete employees whose age is 30.
DELETE FROM employee WHERE age=30;


/*Level 4 — NULL, IS NULL & IS NOT NULL
1. What is NULL?

NULL means no value / unknown value.

It is different from:

0 → numeric value
'' → empty string
'NULL' → text
NULL → absence of a value

Example:

SELECT * FROM employee
WHERE salary IS NULL;

This finds employees whose salary has no value.

2. Why can't we use = NULL?

❌ Wrong:

WHERE salary = NULL;

For NULL, SQL provides special operators:

IS NULL
IS NOT NULL
3. IS NULL

Used to find rows where a column has no value.

SELECT * FROM employee
WHERE salary IS NULL;
4. IS NOT NULL

Used to find rows where a column contains a value.

SELECT * FROM employee
WHERE salary IS NOT NULL;*/

--Q81. Display employees whose salary is NULL.
SELECT * FROM employee WHERE salary IS NULL;
--Q82. Display employees whose department is NULL.
SELECT * FROM employee WHERE department IS NULL;
--Q83. Display employees whose email is NOT NULL.
SELECT * FROM employee WHERE email IS NOT NULL;
--Q84. Display employee name and salary where salary is NOT NULL.
SELECT name,salary FROM employee WHERE salary IS NOT NULL;
--Q85. Display employees whose joining date is NULL.
SELECT * FROM employee WHERE joining_date IS NULL;
--Q86. Display the name and joining_date of employees whose joining_date is NOT NULL.
select name,joining_date FROM employee WHERE joining_date IS NOT NULL;


/*Level 5 — Primary Key & Foreign Key
1. Primary Key

A Primary Key (PK) uniquely identifies each row in a table.

Example:

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

Here, department_id uniquely identifies each department.

Rules:

Must be unique
Cannot be NULL
A table has one primary key constraint (which can contain multiple columns)
2. Foreign Key

A Foreign Key (FK) creates a relationship between two tables.

Suppose we have:

department

department_id	department_name
1	IT
2	HR
3	Finance

And:

employee

id	name	department_id
101	Amit	1
102	Priya	2
103	Rahul	3

Here:

department.department_id
        ↑
        |
employee.department_id

department_id in employee is the Foreign Key.

It references:

department(department_id)
3. Why do we use Foreign Keys?

They help maintain referential integrity.

For example, if the department table has only:

1 = IT
2 = HR
3 = Finance

then we shouldn't normally insert an employee with:

department_id = 99

because department 99 doesn't exist.

4. Creating the relationship

Parent table:

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

Child table:

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);
Important terminology
Term	Meaning
Primary Key	Uniquely identifies a row
Foreign Key	References a key in another table
Parent table	Table containing the referenced PK
Child table	Table containing the FK
Relationship	Connection between tables*/

/*
Q87

Create a department table with:

department_id → INT, Primary Key
department_name → VARCHAR(50), NOT NULL
Q88

Insert these 4 departments:

1 → IT
2 → HR
3 → Finance
4 → Sales*/
CREATE TABLE department(department_id INT PRIMARY KEY,department_name VARCHAR(50) NOT NULL);
INSERT INTO department(department_id,department_name) VALUES(1,'IT'),(2,'HR'),(3,'Finance'),(4,'Sales');
/*Q89

Create an employee2 table with:

id → INT, Primary Key, Auto Increment
name → VARCHAR(50), NOT NULL
salary → INT
department_id → INT
department_id should be a Foreign Key referencing department(department_id)*/
CREATE TABLE employee2(id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(50) NOT NULL, salary INT, department_id INT, FOREIGN KEY (department_id)
        REFERENCES department(department_id) );


/*Q90

Insert these employees:

Amit   55000   1
Priya  45000   2
Rahul  65000   3
Sneha  50000   1*/
INSERT INTO employee2(name,salary,department_id)VALUES('Amit',55000,1),('Priya',45000,2),('Rahul',65000,3),('Sneha',50000,1);

/*Q91

Write a query to display all records from employee2.*/
SELECT * FROM employee2;
/*Q92. Create a course table with:

course_id → INT, Primary Key, Auto Increment
course_name → VARCHAR(50), NOT NULL
duration → INT
fee → INT

Write only the CREATE TABLE query.*/
CREATE TABLE course(course_id INT PRIMARY KEY AUTO_INCREMENT, course_name VARCHAR(50) NOT NULL, duration INT, fee INT);

/*Q93 — Create Department Table

Create a table called department2:

department_id → INT, Primary Key
department_name → VARCHAR(50), NOT NULL*/

CREATE TABLE department2(department_id INT PRIMARY KEY, department_name VARCHAR(50) NOT NULL);
/*Q94 — Insert Departments

Insert these 4 records into department2:

1 → IT
2 → HR
3 → Finance
4 → Sales

Use one INSERT statement.*/
INSERT INTO department2(department_id ,department_name) VALUES(1,'IT'),(2,'HR'),(3,'Finance'),(4,'Sales');

/*Q95 — Create Employee Table

Create employee3 with:

id → INT, Primary Key, Auto Increment
name → VARCHAR(50), NOT NULL
salary → INT
department_id → INT
department_id → Foreign Key referencing department2(department_id)*/
CREATE TABLE employee3(id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(50) NOT NULL, salary INT, department_id INT, FOREIGN KEY (department_id) REFERENCES department2(department_id));

/*Q95-A

Create a table called student_course with:

student_id → INT, Primary Key
student_name → VARCHAR(50), NOT NULL
course_id → INT
course_id should be a Foreign Key referencing course(course_id)

Write only the CREATE TABLE query.*/

CREATE TABLE student_course(student_id INT PRIMARY KEY,student_name VARCHAR(50) NOT NULL,course_id INT, FOREIGN KEY(course_id) REFERENCES course(course_id));

/*Q96 — Insert Employees

Insert these records into employee3:

name	salary	department_id
Amit	55000	1
Priya	45000	2
Rahul	65000	3
Sneha	50000	1
Vikas	60000	4

Use one INSERT statement.*/
INSERT INTO employee3(name,salary,department_id) VALUES('Amit',55000,1),('Priya',45000,2),('Rahul',65000,3),('Sneha',50000,1),('Vikas',60000,4);

/*Q97 — Display all departments

Display all records from department2.*/
SELECT * FROM department2;

/*Q98 — Display all employees

Display all records from employee3.*/
SELECT * FROM employee3;

/*Q99 — Display selected columns

Display:

name
salary
department_id

from employee3.*/
SELECT name,salary,department_id FROM employee3;

/*Q100 — Verify the relationship

Write a query that displays:

employee name
department_id

from employee3, sorted by department_id in ascending order.*/

SELECT name, department_id FROM employee3 ORDER BY department_id ASC;


/*Level 5 — INNER JOIN
1. Small Theory
What is INNER JOIN?

INNER JOIN is used to combine rows from two tables when there is a matching value between them.

In our tables:

department2
-------------------------
department_id | department_name
1             | IT
2             | HR
3             | Finance
4             | Sales
employee3
--------------------------------
id | name  | salary | department_id
1  | Amit  | 55000  | 1
2  | Priya | 45000  | 2
3  | Rahul | 65000  | 3
4  | Sneha | 50000  | 1
5  | Vikas | 60000  | 4

The common column is:

employee3.department_id
             ↕
department2.department_id
Visual
        department2
┌────┬─────────────┐
│ ID │ Department  │
├────┼─────────────┤
│ 1  │ IT          │
│ 2  │ HR          │
│ 3  │ Finance     │
│ 4  │ Sales       │
└────┴─────────────┘
       ▲
       │ MATCH
       ▼
        employee3
┌────┬───────┬────────┬────┐
│ ID │ Name  │ Salary │ Dept_ID │
├────┼───────┼────────┼────┤
│ 1  │ Amit  │ 55000  │ 1  │
│ 2  │ Priya │ 45000  │ 2  │
│ 3  │ Rahul │ 65000  │ 3  │
│ 4  │ Sneha │ 50000  │ 1  │
│ 5  │ Vikas │ 60000  │ 4  │
└────┴───────┴────────┴────┘

INNER JOIN matches the department_id values.

So we can produce:

Amit   | 55000 | IT
Priya  | 45000 | HR
Rahul  | 65000 | Finance
Sneha  | 50000 | IT
Vikas  | 60000 | Sales
2. Basic Syntax
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;

For our tables:

SELECT employee3.name, department2.department_name
FROM employee3
INNER JOIN department2
ON employee3.department_id = department2.department_id;
Important difference

WHERE tells SQL which rows to filter.

ON tells SQL how the two tables are related/matched.

Think:

JOIN → connect tables
ON   → matching condition
WHERE → filter the result
*/
/*Q101

Display employee name and department name using INNER JOIN.

Expected columns:

name | department_name*/
SELECT employee3.name,department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id;
/*Q102

Display:

name
salary
department_name

using INNER JOIN.*/
SELECT employee3.name,employee3.salary,department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id;   

/*Q103

Display employees who belong to the IT department.

Use INNER JOIN and WHERE.*/
SELECT employee3.name, department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id WHERE department_name='IT';

--Write a query to display employee name and department name for employees belonging to the HR department using INNER JOIN.
SELECT employee3.name, department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id WHERE department_name='HR';
    
/*Q104

Display employees whose salary is greater than 50,000, along with their department name.*/
SELECT employee3.name, employee3.salary ,department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id WHERE salary>50000;
/*Q105

Display employees from HR or Finance, along with their salary and department name.
*/
SELECT employee3.name, department2.department_name ,employee3.salary FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id WHERE department2.department_name='HR' OR department2.department_name='Finance';
/*Write a query using INNER JOIN to display:

name
salary
department_name

for employees who belong to IT or Sales.
*/
SELECT employee3.name, employee3.salary,department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id WHERE department2.department_name='IT' OR department2.department_name='Sales';

/*Q106

Display employee name, salary, and department name, sorted by salary from highest to lowest.
*/
SELECT employee3.name,employee3.salary, department2.department_name FROM employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id ORDER BY salary DESC;
/*Q107

Display the employee with the highest salary, along with their department name.

Hint: Use:

ORDER BY
LIMIT*/
SELECT employee3.name,employee3.salary,department2.department_name From employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id ORDER BY salary DESC LIMIT 1; 
/*Q108

Display:

department_name
employee_name
salary

and sort the result by department name in ascending order.*/
SELECT employee3.name,employee3.salary,department2.department_name From employee3 INNER JOIN department2 ON employee3.department_id=department2.department_id ORDER BY department2.department_name ASC; 
/*Q108
