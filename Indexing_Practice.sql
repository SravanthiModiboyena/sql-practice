Create Database if not exists company_db;
use company_db;
Drop table if exists employees;
Create table employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT 
);

Insert into employees values
(1, 'Sravanthi', 'IT', 65000),
(2, 'Sam', 'HR', 45000),
(3, 'Prasanna', 'IT', 56000),
(4, 'Ammu', 'HR', 53000),
(5, 'Ravi', 'Sales', 40000),
(6, 'Kiran', 'IT', 80000);

SELECT * FROM employees 
where emp_id = 6;

Explain select * from employees where emp_id = 6;

Create Index idx_emp_id
on employees(emp_id);

Select *
from employees
where emp_id = 6;

explain select * from employees where emp_id = 6;

Create Index idx_department 
on employees(department);

Select * 
from employees
where department = 'IT';

Create index idx_dept_salary
on employees(department,salary);

Select * 
from employees 
where department = 'IT'
and salary > 60000;

Create table departments (
    dept_name VARCHAR(30),
    location VARCHAR(30)
);

Create index idx_dept_name
on departments(dept_name);

Select e.emp_name, d.location
from employees e 
join departments d
on e.department = d.dept_name;

create unique index idx_unique_emp
on employees(emp_id);