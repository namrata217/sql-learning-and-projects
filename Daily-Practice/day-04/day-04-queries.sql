R1 Display employees whose salary is greater than 80000.
SELECT * FROM employee WHERE salary>80000; 
R2 Display employees whose department is either CSE or IT using IN.
SELECT * FROM employee WHERE department IN ('CSE','IT');
R3 Display employees whose age is between 25 and 30.
SELECT * FROM employee WHERE age BETWEEN 25 AND 30;
R4 Display employees whose city is not Pune or Mumbai using NOT IN.
SELECT * FROM employee WHERE city NOT IN ('Pune','Mumbai'); 
R5 Display only the distinct departments.
SELECT DISTINCT department FROM employee;
Q1 Display employees whose name starts with N using LIKE.
SELECT * FROM employee WHERE name LIKE 'N%';
Q2 Display employees whose name ends with a.
SELECT * FROM employee WHERE name LIKE '%a';
Q3 Display employees whose name contains it anywhere.
SELECT * FROM employee WHERE name LIKE '%it%';
Q4 Display employees whose city starts with P.
SELECT * FROM employee WHERE city LIKE 'P%';
Q5 Display employees whose department ends with g.
SELECT * FROM employee WHERE department LIKE '%g';
Q6 Display employees whose name starts with S.
SELECT * FROM employee WHERE name LIKE 'S%';
Q7 Display employees whose name does not start with S.
SELECT * FROM employee WHERE name NOT LIKE 'S%';
Q8 Display employees whose name contains the letter a.
SELECT * FROM employee WHERE name LIKE '%a%';
Q9 Display employees whose city ends with e.
SELECT * FROM employee WHERE city LIKE '%e';
Q10 Display employees whose name has exactly 5 characters using _.
SELECT * FROM employee WHERE name LIKE '_____';
Q11 Display employees whose name has exactly 6 characters.
SELECT * FROM employee WHERE name LIKE '______';
Q12 Display employees whose name starts with A and has exactly 5 characters.
SELECT * FROM employee WHERE name LIKE 'A____';
Q13 Display employees whose name contains ra.
SELECT * FROM employee WHERE name LIKE '%ra%';
Q14 Display employees whose department starts with C OR city starts with M.
SELECT * FROM employee WHERE department LIKE 'C%' OR city LIKE 'M%';
Q15 Display employees whose name starts with N AND salary is greater than 50000.
SELECT * FROM employee WHERE name LIKE 'N%' AND salary>50000;
T2: Display employees whose name starts with S and has exactly 6 characters.
SELECT * FROM employee WHERE name LIKE 'S_____';
