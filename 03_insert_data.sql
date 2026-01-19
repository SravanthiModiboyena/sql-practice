USE sql_practice;
GO

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA IN ('raw', 'staging', 'analytics');
GO

-- Insert data into raw layer
INSERT INTO raw.customers
(customer_id, customer_name, email, city, created_date)
VALUES
(1, 'Sravanthi Modiboyena', 'sravanthi@gmail.com', 'Delhi', '2023-01-10'),
(2, 'Sky ', 'sky@gmail.com', 'Mumbai', '2023-02-15'),
(3, 'Shasra', 'sra@gmail.com', 'Bangalore', '2023-03-05'),
(4, 'Sam', 'sam@gmail.com', 'Ahmedabad', '2023-04-12'),
(5, 'Sravan Kumar', 'sravan@gmail.com', 'Delhi', '2023-05-20');
GO

Select * from raw.customers;