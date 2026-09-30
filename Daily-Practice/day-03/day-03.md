
1. IN

IN is used when you want to match a column against multiple possible values.

Instead of:

WHERE department = 'CSE'
OR department = 'IT'

we can write:

WHERE department IN ('CSE', 'IT');
Visual
department
    │
    ├── CSE ──┐
    ├── IT  ──┤──→ IN → matching employees
    ├── HR  ──┤
    └── Sales ┘
2. NOT IN

Used when you want values other than the specified values.

SELECT *
FROM employee
WHERE department NOT IN ('CSE', 'IT');
3. BETWEEN

Used to find values within a range.

SELECT *
FROM employee
WHERE salary BETWEEN 50000 AND 100000;

For numeric values, BETWEEN includes both boundaries.

50000 ======================= 100000
  ↑                              ↑
 included                     included
4. NOT BETWEEN

Find values outside a specified range.

SELECT *
FROM employee
WHERE salary NOT BETWEEN 50000 AND 100000;
