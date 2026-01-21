use sql_practice;
GO

drop table if exists raw.customers;
drop table if exists staging.customers;
drop table if exists analytics.customers;
GO

if NOT EXISTS (Select * from sys.schemas where name = 'raw')
    exec('Create Schema raw'); 
GO

if NOT EXISTS (Select * from sys.schemas where name = 'Staging')
    exec('Create Schema staging');
GO

if NOT EXISTS (Select * from sys.schemas where name = 'Analytics')
    exec('Create schema analytics');
GO

-- Raw schema table: stores raw data 
create table raw.customers (
     customer_id int,
     customer_name varchar(100),
     email varchar(100),
     city varchar(50),
     created_date Date
);
GO

-- Staging schema table: cleaned/strctured data
create table staging.customers (
    customer_id int NOT NULL,
    customer_name varchar(100),
    email varchar(100),
    city varchar(50),
    created_date DATE
);
GO

-- Analytics schema table: final reporting layer 
create table analytics.customers (
    customer_id int PRIMARY key,
    customer_name varchar(100),
    city varchar(50),
    customer_since Date
);
GO

-- verify tables in database 
SELECT TABLE_SCHEMA, TABLE_NAME
from INFORMATION_SCHEMA.TABLES
where TABLE_TYPE = 'BASE TABLE'
order by TABLE_SCHEMA;
GO
