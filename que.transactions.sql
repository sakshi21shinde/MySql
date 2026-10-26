SELECT * FROM bank.transactions;
-- Que Retrive amount greater than 500 and 20000
select * from transactions 
where amount>=500 and amount<=20000;

-- Que Retrive amount greater than 500 and 20000
select * from transactions
where amount between 500 and 20000;

-- Que Retrive amount between 1000 and 10000
select * from transactions 
where Amount between 1000 and 10000;

-- Que Retrive all transaction Records
select Transaction_type from transactions;

-- Que Retrieve all Deposit Transaction_Type
select * from transactions
where transaction_type="deposite";

-- Que skip first 2 transaction and select next 3 transaction

select * from transactions 
limit 3 offset 2;

-- Que display amount from transaction which amount is greater than 5000

select * from transactions
where Amount>5000;

-- Que Fetch TransactionDate between 11 ro 13

select * from transactions
where Transaction_date between "2025-05-11" and "2025-05-13";

-- Que fetch the transactions record whose transaction ammount is greater than 3000 and transaction type is deposit 

select * from transactions
where Amount>3000 and transaction_type="Deposit";

--  Display transactions between 1000 and 10000
select * from transactions
where Amount between 1000 and 10000;

-- Skip Initial Records While Viewing Transactions
select * from transactions
limit 4 offset 1;

-- Retrieve top 5 transactions with highest amount
select * from transactions
order by Amount desc
limit 5;

-- Display unique transaction types
select distinct(Transaction_type) from transactions;

-- Skip the first 3 transaction records and display the next 1 records
select * from transactions
limit 1 offset 3;

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transactions
where Transaction_type="Deposite" or Transaction_type="Withdraw";

-- Retrieve transactions for Payment and Deposit categories
select * from transactions
where Transaction_type regexp("Payment| Deposite");

-- Display Transactions Sorted by Transaction Date
select * from transactions
order by Transaction_date asc;

-- Display transactions sorted by Amount in descending order
select * from transactions
order by Amount desc;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transactions
limit 2 offset 3;

-- Display top 3 transactions with highest amount
select * from transactions
order by Amount desc limit 3;

-- Display top 5 latest transactions
select * from transactions
order by Amount desc
limit 5;

-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.

select Transaction_id,Amount,
case when Amount >=7000 then "High Transaction"
when Amount>=5000 then "Medium Transaction"
when Amount<=3000 then "Low Transaction"
end as Transaction_type from transactions;






