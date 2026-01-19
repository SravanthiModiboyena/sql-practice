use company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE EMPLOYEES (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

insert into employees values
(1,'Sravanthi','IT',60000),
(2,'Sam','HR',45000),
(3,'Prasanna','IT',70000),
(4,'Sai Krishna','HR',52000),
(5,'Ammu','HR',75000),
(6,'Sravan','Sales',80000);

DROP TABLE IF EXISTS dept_summary;

create table dept_summary (
    department VARCHAR(30),
    total_employees INT,
    avg_salary FLOAT
);

insert into dept_summary
select
    department,
    count(*) as total_employees,
    avg(salary) as avg_salary
from employees
where salary > 50000
group by department
having avg(salary) > 60000;

select
    e.emp_name,
    e.department,
    d.total_employees,
    d.avg_salary
from employees e
join dept_summary d
on e.department = d.department
where e.salary > 50000;
