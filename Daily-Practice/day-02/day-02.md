
🎯 Scenario: HR Employee Filtering

The HR manager wants to find employees based on different conditions.

                    EMPLOYEE TABLE
                          │
                          ▼
                  ┌───────────────┐
                  │ HR Filtering  │
                  └───────┬───────┘
                          │
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
       Salary            Age          Department
       > / <             >= / <=       AND / OR
          │               │               │
          └───────────────┴───────────────┘
                          ▼
                   Filtered Employees
Concepts for Day 02
1. Greater than
SELECT * FROM employee
WHERE salary > 50000;
2. Less than
SELECT * FROM employee
WHERE salary < 100000;
3. Greater than or equal to
SELECT * FROM employee
WHERE age >= 30;
4. Less than or equal to
SELECT * FROM employee
WHERE age <= 30;
5. Not equal
SELECT * FROM employee
WHERE department != 'CSE';

You can also use:

WHERE department <> 'CSE';
6. AND

Both conditions must be true.

SELECT * FROM employee
WHERE department = 'CSE'
AND salary > 50000;
7. OR

At least one condition must be true.

SELECT * FROM employee
WHERE department = 'CSE'
OR department = 'IT';
