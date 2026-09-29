
📝 Day 02 — Practice Set


--Q1. Display employees whose salary is greater than 60000.
SELECT * FROM employee WHERE salary >60000;
--Q2. Display employees whose salary is less than 80000.
SELECT * FROM employee WHERE salary <80000;
--Q3. Display employees whose age is greater than or equal to 30.
SELECT * FROM employee WHERE age>=30;
--Q4. Display employees whose age is less than or equal to 29.
SELECT * FROM employee WHERE age<=29;
--Q5. Display employees whose salary is not equal to 90000.
SELECT * FROM employee WHERE salary !=90000;


--Q6. Display employees whose department is CSE and salary is greater than 50000.
SELECT * FROM employee WHERE department ='CSE' AND salary>50000;
--Q7. Display employees whose age is greater than 25 and salary is less than 100000.
SELECT * FROM employee WHERE age>25 AND salary <100000;
--Q8. Display employees who live in Pune and belong to the IT department.
SELECT * FROM employee WHERE city='Pune' AND department='IT';
--Q9. Display employees whose salary is greater than 50000 and age is less than 30.
SELECT * FROM employee WHERE salary>50000 AND age<30;


--Q10. Display employees who belong to either CSE or IT.
SELECT * FROM employee WHERE department='CSE' OR department='IT';
--Q11. Display employees who live in either Pune or Mumbai.
SELECT * FROM employee WHERE city='Pune' OR city='Mumbai';
--Q12. Display employees whose salary is either 50000 or 90000.
SELECT * FROM employee WHERE salary=50000 OR salary=90000;


--Q13. Display employees who belong to CSE and have salary greater than 70000 and age greater than 25.
SELECT * FROM employee WHERE department='CSE' AND salary>70000 AND age>25;
--Q14. Display employees who belong to IT or have salary greater than 100000.
SELECT * FROM employee WHERE department='IT' OR salary>100000;
--Q15. Display employees who are from Pune and have salary greater than 50000 or belong to the CSE department.
SELECT * FROM employee WHERE city='Pune' AND salary>50000 OR department='CSE';

🔄 Day 02 — Previous Concept Revision

--R1. Display all employees whose department is CSE.
SELECT * FROM employee WHERE department='CSE';
--R2. Display only the name and city of all employees.
SELECT name,city FROM employee;
--R3. Display employees whose salary is greater than 75000.
SELECT * FROM employee WHERE salary>75000;
--R4. Display all different departments from the employee table.
SELECT DISTINCT department FROM employee;
--R5. Display employees who live in Pune.
SELECT * FROM employee WHERE city='Pune';

--T1. Display employees whose age is less than or equal to 35.
SELECT * FROM employee WHERE age<=35;
--T2. Display employees who belong to either CSE or Mechanical.
SELECT * FROM employee WHERE department='CSE' OR department='Mechanical';
