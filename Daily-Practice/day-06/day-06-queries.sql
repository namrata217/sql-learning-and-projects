🔄 PART 1 — Revision: 5 Questions
R1 Display employees whose salary is greater than 60000.
SELECT * FROM employee WHERE salary>60000;
R2 Display employees whose department is either CSE or IT using IN.
SELECT * FROM employee WHERE department IN ('CSE','IT');
R3 Display employees whose name starts with N.
SELECT * FROM employee WHERE name LIKE 'N%';
R4 Display employees whose salary is between 50000 and 100000, ordered by salary descending.
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 100000 ORDER BY salary DESC; 
R5 Display employees from Pune, ordered by name ascending.
SELECT * FROM employee WHERE city='Pune' ORDER BY name ASC;
T1 Display all employees from Mumbai, ordered by salary descending.
  SELECT * FROM employee WHERE city='Mumbai' ORDER BY salary DESC;
🆕 PART 2 — LIMIT: 15 Questions
Q1 Display only the first 5 employees.
SELECT * FROM employee  LIMIT 5;
Q2 Display the 5 highest-paid employees.
SELECT * FROM employee ORDER BY salary DESC LIMIT 5;
Q3 Display the 3 lowest-paid employees.
SELECT * FROM employee ORDER BY salary ASC LIMIT 3;
Q4 Display the 3 youngest employees.
SELECT * FROM employee ORDER BY age ASC LIMIT 3;
Q5 Display the 3 oldest employees.
SELECT * FROM employee ORDER BY age DESC LIMIT 3;
Q6 Display the first 10 employees, ordered by name A–Z.
SELECT * FROM employee ORDER BY name ASC LIMIT 10;
Q7 Display the top 5 highest-paid CSE employees.
SELECT * FROM employee WHERE department='CSE' ORDER BY salary DESC LIMIT 5;
Q8 Display the top 3 highest-paid IT employees.
SELECT * FROM employee WHERE department='IT' ORDER BY salary DESC LIMIT 3;
Q9 Display the 2 lowest-paid employees from Pune.
SELECT * FROM employee WHERE city='Pune' ORDER BY salary ASC LIMIT 2;
Q10 Display the 3 oldest employees whose salary is greater than 50000.
SELECT * FROM employee WHERE salary>50000 ORDER BY age DESC LIMIT 3;
Display the 5 youngest employees, ordered from youngest to oldest.
SELECT * FROM employee ORDER BY age ASC LIMIT 5;
Q11

Display the 5 youngest employees, ordered by age ascending.
SELECT * FROM employee ORDER BY age ASC LIMIT 5;
Q12

Display the top 3 highest-paid employees from either CSE or IT.
SELECT * FROM employee WHERE department IN ('CSE','IT') ORDER BY salary DESC LIMIT 3;
Q13 Display the 2 highest-paid employees whose age is between 25 and 35.
SELECT * FROM employee WHERE age between 25 AND 35 ORDER BY salary DESC LIMIT 2;
Q14 Display the 3 employees whose names start with N, ordered by salary descending.
SELECT * FROM employee WHERE name LIKE 'N%' ORDER BY salary DESC LIMIT 3;
Q15 Display the top 5 employees from Pune, ordered by salary descending.
SELECT * FROM employee WHERE city='Pune' ORDER BY salary DESC LIMIT 5;
🆕 PART 3 — LIMIT + OFFSET: 10 Questions

Remember:

LIMIT 5 OFFSET 10

means:

skip 10 rows → return next 5 rows

Q16

Display 5 employees after skipping the first 5 employees.
select * from employee limit 5 offset 5;
Q17

Display 5 employees after skipping the first 10 employees.
select * from employee limit 5 offset 10;
Q18

Display employees ordered by salary descending, then skip the top 3 employees and display the next 5.
select * from employee order by salary desc limit 5 offset 3;
Q19

Display employees ordered by salary ascending, then skip the lowest-paid 2 employees and display the next 3.
select * from employee order by salary asc limit 3 offset 2;
Q20

Display employees ordered by name A–Z, skip the first 5 names and display the next 5.
select * from employee order by name asc limit 5 offset 5;
Q21 Display employees from CSE ordered by salary descending, skip the top 2 and display the next 3.
select * from employee where department='CSE' order by salary DESC limit 3 offset 2;
Q22 Display employees from Pune ordered by salary descending, skip the top 1 and display the next 3.
select * from employee where city='Pune' order by salary DESC limit 3 offset 1;
Q23 Display employees whose age is greater than 25, ordered by age ascending, skip the first 3 and display the next 5.
select * from employee where age>25 order by age asc limit 5 offset 3;
Q24 Display employees from either CSE or IT, ordered by salary descending, skip the top 2 and display the next 3.
select * from employee where department in ('CSE','IT') order by salary DESC limit 3 offset 2;
Q25 Display employees whose salary is between 50000 and 100000, ordered by salary descending, skip the first 2 and display the next 5.
select * from employee where salary between 50000 and 100000 order by salary DESC limit 5 offset 2;
🔁 PART 4 — Combined Practice: 15 Questions

These combine everything we've learned from Day 01–06.

Q26 Display employees from CSE whose salary is greater than 50000, ordered by salary descending, and show only the top 3.
select * from employee where department='CSE' and salary>50000 order by salary DESC limit 3;
Q27 Display employees from Pune or Mumbai, ordered by name A–Z, and show only the first 5.
select * from employee where city in ('Pune','Mumbai')order by name asc limit 5;
Q28 Display employees whose name starts with S, ordered by salary descending, and show the top 2.
select * from employee where name like 'S%' order by salary desc limit 2;
Q29 Display employees whose department is NOT CSE or IT, ordered by salary ascending, and show the first 5.
select * from employee where department not in ('CSE','IT') order by salary asc limit 5;
Q30 Display employees whose age is between 25 and 35, ordered by age ascending, and show the first 4.
select * from employee where age between 25 and 35 order by age asc limit 4;
Q31 Display employees whose salary is greater than 70000, ordered by salary descending, and show the top 3.

Q32

Display employees whose city is NOT Pune, ordered by name ascending, and show the first 5.

Q33

Display employees whose department is CSE or IT, ordered by name descending, and show the first 4.

Q34

Display employees whose name contains a, ordered by name ascending, and show the first 5.

Q35

Display employees whose salary is NOT between 50000 and 100000, ordered by salary descending, and show the top 3.

Q36

Display employees from Pune whose salary is greater than 50000, ordered by salary descending, and show the top 3.

Q37

Display employees whose name ends with a, ordered by name ascending, and show the first 4.

Q38

Display employees whose department is IN CSE, IT, or HR, ordered by salary descending, and show the top 5.

Q39

Display employees whose age is NOT between 25 and 30, ordered by age ascending, and show the first 5.

Q40

Display employees whose name starts with N, ordered by salary descending, skip the first employee and show the next 3.

⭐ PART 5 — Bonus / Interview Practice: 30 Questions

These are deliberately more mixed and interview-oriented.

Q41

Find the highest-paid employee.

Q42

Find the lowest-paid employee.

Q43

Find the second-highest-paid employee using ORDER BY and LIMIT/OFFSET.

Q44

Find the third-highest-paid employee.

Q45

Display the top 3 oldest employees.

Q46

Display the 3 youngest employees.

Q47

Display the top 5 employees alphabetically by name.

Q48

Display the last 5 employees alphabetically by name using descending order.

Q49

Display the second-highest-paid CSE employee.

Q50

Display the third-lowest-paid employee from Pune.

Q51

Display the top 3 salaries from IT.

Q52

Display employees whose salary is greater than 60000, ordered by salary descending, skipping the top 2.

Q53

Display the next 5 employees after the first 5 when sorted by age ascending.

Q54

Display employees whose names contain a, sorted by salary descending, showing only 3.

Q55

Display employees from CSE or IT, sorted by salary ascending, showing only 5.

Q56

Display employees whose salary is between 60000 and 120000, sorted by salary descending, showing the top 4.

Q57

Display employees whose names start with A or S, sorted alphabetically.

Q58

Display employees whose city starts with P, sorted by salary descending.

Q59

Display the second and third highest-paid employees.

Q60

Display the 4th, 5th and 6th highest-paid employees using LIMIT and OFFSET.

Q61 Display the second page of employees when each page contains 5 employees, sorted by name A–Z.

Q62 Display the third page of employees when each page contains 10 employees, sorted by salary descending.

Q63 Display the top 3 employees whose names contain a and salary is greater than 50000.

Q64 Display the top 5 employees who are not from CSE or IT.

Q65 Display the 3 highest-paid employees aged between 25 and 35.

Q66 Display the 2 lowest-paid employees whose names start with S.

Q67 Display employees from Pune or Mumbai, sorted by salary descending, skipping the top 2 and returning the next 4.
select * from employee where city in ('Pune','Mumbai') order by salary DESC offset 2 limit 4;
Q68 Display employees whose department is CSE, IT, or HR, sorted by name A–Z, skipping the first 3.
select * from employee where department in ('CSE','IT','HR') order by name ASC LIMIT 18446744073709551615 offset 3;
Q69 Display the top 3 employees whose salary is NOT between 50000 and 100000.
select * from employee where salary not between 50000 and 100000 order by salary desc limit 3;
Q70 Display the second page of the top-paid employees, where each page contains 5 employees.
select * from employee order by salary desc limit 5 offset 5;
Display employees sorted by salary descending, skip the first 3 employees and return the next 5.
select * from employee order by salary desc limit 5 offset 3;
