/*
    Project: Employee Management System
    File: insert-data.sql
    Purpose: Insert employee records into the employee table
*/

USE employee_management;


-- ============================================
-- INSERT EMPLOYEE DATA
-- ============================================

INSERT INTO employee
(name, email, age, department, salary, joining_date)
VALUES
('Amit Sharma', 'amit@gmail.com', 28, 'IT', 55000, '2024-01-15'),
('Priya Patil', 'priya@gmail.com', 26, 'HR', 45000, '2023-06-10'),
('Rahul Deshmukh', 'rahul@gmail.com', 32, 'Finance', 65000, '2022-08-20'),
('Sneha Kulkarni', 'sneha@gmail.com', 29, 'IT', 60000, '2024-03-05'),
('Vikas Joshi', 'vikas@gmail.com', 35, 'Sales', 50000, '2021-11-12');


USE employee_management;

SELECT * FROM employee;

INSERT INTO employee(name,email,age,department,salary,joining_date) VALUES('Namrata Gholave','namrata@gmail.com',29,'CSE',90000,'2026-02-25'),('Shailesh Gholave','shailesh@gmail.com',31,'Instrumentation',1300000,'2025-04-15');
SELECT * FROM employee;
