--R1 Display all employees whose salary is greater than 70000.
SELECT * FROM employee WHERE salary>70000;
--R2 Display employees whose age is less than 30 AND salary is greater than 50000.
SELECT * FROM employee WHERE age<30 AND salary>50000;
--R3 Display employees who belong to CSE OR IT.
SELECT * FROM employee WHERE department='CSE' OR department='IT';
--R4 Display only name, department, and city of all employees.
SELECT name,department,city FROM employee; 
--R5 Display all different cities from the employee table.
SELECT DISTINCT city FROM employee;

--Q1. Display employees who belong to either CSE or IT using IN.
SELECT * FROM employee WHERE department='CSE' OR department='IT';
--Q2. Display employees who live in either Pune, Mumbai, or Nashik using IN.
SELECT * FROM employee WHERE city IN ('Pune','Mumbai','Nashik');
--Q3. Display employees whose salary is either 50000, 70000, or 90000 using IN.
SELECT * FROM employee WHERE salary IN(50000,70000,90000);
--Q4. Display employees whose age is either 25, 29, or 30 using IN.
SELECT * FROM employee WHERE age IN(25,29,30);
--Q5. Display employees who do not belong to CSE or IT.
SELECT * FROM employee WHERE department NOT IN ('CSE','IT');
--Q6. Display employees who do not live in Pune or Mumbai.
SELECT * FROM employee WHERE city NOT IN('Pune','Mumbai');
--Q7. Display employees whose department is not HR, Finance, or Sales.
SELECT * FROM employee WHERE department NOT IN ('HR','Finance','Sales');


--Q8. Display employees whose salary is between 50000 and 100000.
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 100000;
--Q9. Display employees whose age is between 25 and 30.
SELECT * FROM employee WHERE age BETWEEN 25 AND 30;
--Q10. Display employees whose salary is between 60000 and 120000.
SELECT * FROM employee WHERE salary BETWEEN 60000 AND 120000;
--Q11. Display employees whose age is between 28 and 35.
SELECT * FROM employee WHERE age BETWEEN 28 AND 35;


--Q12. Display employees whose salary is not between 50000 and 100000.
SELECT * FROM employee WHERE salary NOT BETWEEN 50000 AND 100000;
--Q13. Display employees whose age is not between 25 and 30.
SELECT * FROM employee WHERE age NOT BETWEEN 25 AND 30;

--Q14. Display employees who belong to either CSE or IT and have salary greater than 50000.
SELECT * FROM employee WHERE department IN('CSE','IT') AND salary>50000;
--Q15. Display employees who live in either Pune or Mumbai and whose age is between 25 and 35.
SELECT * FROM employee WHERE city IN('Pune','Mumbai') AND age BETWEEN 25 AND 35;

--Display employees whose department is either HR, Finance, or Sales, using IN.
SELECT * FROM employee WHERE department IN('HR','Finance','Sales');
