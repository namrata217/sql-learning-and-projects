

Day 1 — Employee Database

Scenario:
You have joined a company as a junior developer. The HR team has an employee table and asks you to retrieve basic employee information.

                 EMPLOYEE
        ┌─────────────────────────┐
        │ id                      │
        │ name                    │
        │ age                     │
        │ department              │
        │ salary                  │
        │ city                    │
        │ joining_date            │
        └─────────────────────────┘
                    │
                    ▼
              SQL Queries
                    │
        ┌───────────┴───────────┐
        ▼                       ▼
   HR Information          Management
Day 1 concepts

SELECT → retrieve data.

SELECT * FROM employee;

WHERE → filter rows.

SELECT * FROM employee
WHERE department = 'CSE';

DISTINCT → remove duplicate values.

SELECT DISTINCT department
FROM employee;
--Q1. Display all employees.

  SELECT * FROM employee;

--Q2. Display only employee names.
  SELECT name FROM employee;

--Q3. Display employee names and salaries.
  SELECT name,salary FROM employee;

--Q4. Display employees whose department is CSE.
  SELECT * FROM employee WHERE department='CSE';

--Q5. Display employees whose salary is greater than 50000.
  SELECT * FROM employee WHERE salary>50000;

--Q6. Display employees whose age is greater than 25.
  SELECT * FROM employee WHERE age >25;

--Q7. Display employees who live in Pune.
  SELECT * FROM employee WHERE city='Pune';

--Q8. Display employees whose salary is exactly 90000.
  SELECT * FROM employee WHERE salary=90000;

--Q9. Display all different departments.
  SELECT DISTINCT department FROM employee;

--Q10. Display all different cities.
  SELECT DISTINCT city FROM employee;

--Q11. Display employees whose department is IT.
  SELECT * FROM employee WHERE department='IT';

--Q12. Display employees whose salary is less than 100000.
SELECT * FROM employee WHERE salary<100000;
--Q13. Display employees whose age is equal to 29.
SELECT * FROM employee WHERE age=29;
--Q14. Display only name, department, and salary.
SELECT name,department,salary FROM employee;
--Q15. Display all columns for employees whose city is Mumbai.
SELECT * FROM employee WHERE city='Mumbai';
