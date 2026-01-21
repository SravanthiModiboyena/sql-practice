-- created database as company_db 
use company_db;
-- Create Department table
Create Table departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
-- Create Employees Table
Create Table employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
-- Insert into departments 
Insert into departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Sales'),
(4,'Finance');

-- insert into employees 
Insert into employees VALUES
(101, 'Sravanthi', 60000, 1),
(102, 'Sam', 45000, 2),
(103, 'Prasanna', 70000, 1),
(104, 'Ammu', 40000, 3),
(105, 'Sai', 50000, NULL),
(106, 'Sravs', 75000, 4);
-- verify data
SELECT * FROM employees;
SELECT * FROM departments;

-- Inner join(Returns only matching records)
SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
from employees e
INNER JOIN departments d
on e.dept_id = d.dept_id;

-- left join(All employees + matching departments)
SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;

-- Right Join(All departments+ matching employees)
Select
    e.emp_name,
    d.dept_name
from employees e
Right join departments d
on e.dept_id = d.dept_id;

-- Full outer join (left join + right join)
-- MySQL does not support full join directly so combines left + right join

Select 
    e.emp_name,
    d.dept_name
from employees e 
left join departments d 
on e.dept_id = d.dept_id 
UNION
Select 
    e.emp_name,
    d.dept_name
from employees e
Right join departments d 
on e.dept_id = d.dept_id;





