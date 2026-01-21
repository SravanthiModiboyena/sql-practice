-- bank_db
Use bank_db;
-- create table 
create table accounts (
	account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance INT CHECK (balance >= 0)
);
-- insert data
INSERT INTO accounts VALUES
(1, 'Sravanthi', 50000),
(2, 'Sam', 35000);
-- check data
Select * from accounts;
-- transaction
Begin;
update accounts
set balance = balance - 10000
where account_id = 1;
update accounts
set balance = balance + 5000
where account_id = 2;
commit;
-- check 
select * from accounts;
-- rollback(failure handling)
update accounts set balance = 50000
where account_id = 1;
update accounts set balance = 30000
where account_id = 2;
begin;
update accounts
set balance = balance - 10000
where account_id = 1;
-- something went wrong 
rollback; 
-- check balances 
select * from accounts;



