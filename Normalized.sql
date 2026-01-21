use sravanthi_db;

Create Table departments (
     dept_id INT PRIMARY KEY,
     dept_name VARCHAR(50)
);

Create Table employees (
     emp_id INT PRIMARY KEY,
     emp_name VARCHAR(50),
     salary INT,
     dept_id INT,
     FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

     