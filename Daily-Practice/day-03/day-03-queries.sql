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
