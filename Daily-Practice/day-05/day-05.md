📅 Day 05 — ORDER BY, ASC, DESC

Today we learn how to sort employee records.

🏢 Visual Scenario

HR has employee records like:

Employee      Salary     Age
--------------------------------
Namrata       90000      29
Shailesh      130000     31
Amit          60000      26
Priya         75000      28
Rahul         50000      25

HR may ask:

Lowest salary → Highest salary
Highest salary → Lowest salary
Youngest → Oldest
A → Z employee names
Z → A employee names

This is where ORDER BY is used.

📖 Theory
1. ORDER BY

Used to sort the result based on a column.

SELECT * FROM employee
ORDER BY salary;

By default, sorting is ascending (ASC).

2. ASC

Ascending order:

10 → 20 → 30 → 40
A → B → C → D
ORDER BY salary ASC;
3. DESC

Descending order:

40 → 30 → 20 → 10
D → C → B → A
ORDER BY salary DESC;
Important
ORDER BY salary;

is equivalent to:

ORDER BY salary ASC;
