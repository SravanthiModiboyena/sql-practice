-- Create database
CREATE DATABASE sravanthi_db;

-- use database
use sravanthi_db;

-- create students table
CREATE table students (
	id INT auto_increment primary key,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0)
);
-- Insert data
insert into students (name, age) values
('Sravanthi',24),
('Sky',25);

-- Fetch data
select * from students;

