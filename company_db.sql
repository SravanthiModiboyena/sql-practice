use company_db;
DROP TABLE IF EXISTS employees;
create table employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees VALUES
(1,'Sravanthi','IT',60000),
(2,'Sam','HR',45000),
(3,'Prasanna','IT',70000),
(4,'Sai Krishna','HR',52000),
(5,'Ammu','HR',75000),
(6,'Sravan','Sales',80000);

SELECT *
FROM (
   SELECT 
       emp_name,
       department,
       COUNT(*) OVER (PARTITION BY department) AS total_employees,
       AVG(salary) OVER (PARTITION BY department) AS avg_salary
FROM employees
where salary > 50000
) t
where avg_salary >60000;

