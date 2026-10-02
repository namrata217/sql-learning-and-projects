🔄 Revision — 5 Questions

Solve these first.

R1 Display employees whose salary is greater than 70000.
SELECT * FROM employee WHERE salary>70000;
R2 Display employees whose department is either CSE or IT using IN.
SELECT * FROM employee WHERE department IN ('CSE','IT');
R3 Display employees whose name starts with S.
SELECT * FROM employee WHERE name LIKE 'S%';
R4 Display employees whose age is between 25 and 30.
SELECT * FROM employee WHERE age  BETWEEN 25 AND 30;
R5 Display employees whose city is not Pune using NOT IN.
SELECT * FROM employee WHERE city  NOT IN ('Pune');
🆕 Day 05 — New Questions
Q1 Display all employees ordered by salary in ascending order.
SELECT * FROM employee ORDER BY salary ASC;
Q2 Display all employees ordered by salary in descending order.
SELECT * FROM employee ORDER BY salary DESC;
Q3 Display all employees ordered by age from youngest to oldest.
SELECT * FROM employee ORDER BY age ASC;
Q4 Display all employees ordered by age from oldest to youngest.
SELECT * FROM employee ORDER BY age DESC;
Q5 Display all employees ordered by name A to Z.
SELECT * FROM employee ORDER BY name ASC;
Q6 Display all employees ordered by name Z to A.
SELECT * FROM employee ORDER BY name DESC;
Q7 Display employees from the CSE department ordered by salary ascending.
SELECT * FROM employee WHERE department='CSE' ORDER BY salary ASC;
Q8 Display employees from the IT department ordered by salary descending.
SELECT * FROM employee WHERE department='IT' ORDER BY salary DESC;
Q9 Display employees whose salary is greater than 50000, ordered by salary descending.
SELECT * FROM employee WHERE salary>50000 ORDER BY salary DESC;
Q10 Display employees whose age is greater than 25, ordered by age ascending.
SELECT * FROM employee WHERE age>25 ORDER BY age ASC;
Q11 Display employees from Pune ordered by name ascending.
SELECT * FROM employee WHERE city='Pune' ORDER BY name ASC;
Q12 Display employees whose department is either CSE or IT, ordered by salary descending.
SELECT * FROM employee WHERE department IN ('CSE','IT') ORDER BY salary DESC;
Q13 Display employees whose salary is between 50000 and 100000, ordered by salary ascending.
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 100000 ORDER BY salary ASC;
Q14 Display employees whose name starts with N, ordered by salary descending.
SELECT * FROM employee WHERE name LIKE 'N%' ORDER BY salary DESC;
Q15 Display employees whose age is between 25 and 35, ordered by name A to Z.
SELECT * FROM employee WHERE age BETWEEN 25 AND 35 ORDER BY name ASC;

🎯 T1

Display employees from Mumbai, ordered by salary descending.
  SELECT * FROM employee WHERE city='Mumbai' ORDER BY salary DESC;
