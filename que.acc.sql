SELECT * FROM bank.accounts;
-- Que Retrive account_id,account_type,balance from accounts table
select Account_id,Account_type,Balance from accounts;

-- Que Retrive account_type from accounts table only Saving Accounts
select * from accounts where  Account_type="Savings";

-- Que Retrive balance greater than 25000
select * from accounts where Balance>25000;

-- Que Retrive account_type from accounts table only Current Accounts
Select * from accounts
where account_type ="Current";

-- Que Retrive balance where less than 15000
select * from accounts 
where balance<15000;

-- Que find accounts with balance between 500 to 5000
select * from accounts
where balance between 500 and 5000;

-- Que fetch the records where balance is greater than 25000 and account type is savings.
select * from accounts 
where balance<25000 and account_type="Savings";

-- Que find account which account type is saving
select * from accounts
where Account_type="Saving";

-- Retrieve all current account records
select * from accounts
where Account_type="Current";

-- Find accounts with balance less than 15000
select * from accounts
where balance<15000;

-- Display Accounts with Highest Balance First
select * from accounts
order by balance desc;

 -- Retrieve Unique Account Types
 select distinct(Account_type) from accounts;
 
 -- Display Top 3 Highest Balance Accounts
 select balance from accounts
 order by balance desc
 limit 3;
 
 -- Display all accounts where balance information is available
select * from accounts
where balance is not null;

-- The finance team wants to review only Savings and Current account holders.
select * from accounts
where Account_type="Savings" or Account_type="Current";

--  Display accounts belonging to Salary and Savings account types
select * from accounts
where Account_type in ("Salary", "Saving");

-- Retrieve selected account records using AccountID values
select * from accounts
where Account_id in (203,204,205);

-- Display Accounts with Highest Balance First
select * from accounts
order by balance desc;

-- Display accounts sorted by AccountType
select * from accounts
order by Account_type asc;

-- Display Only Top 5 Highest Balance Accounts
select * from accounts
order by balance desc 
limit 5;

-- Display First 3 Customer Records
select * from customer
limit 3;

-- Skip first 2 account records and display next 3 records
select * from accounts
limit 3 offset 2;

-- Display Savings Account Customers Sorted by Balance
-- Categorize Accounts Using Balance
-- Balance >50000 then premium account
-- Balance >2500 then standar account

select Account_id , balance,
case when balance >50000 then "Premium account"
when balance >2500 then "Standard account" 
end as Account_type from accounts;
 




