SELECT * FROM bank.loan;
-- Que Retive Intrest_Rate greater than 9 and Loan_Amount greater than 50000
select * from loan 
where Intrest_rate>9 and Loan_amount >50000;

-- Que Retrieve all records where  Interest Rate less than 8.50
select * from loan 
where Intrest_rate<8.50;

-- Que  Display Loan Records whose Loan Ends After 1 january 2029
select * from loan
where End_date>"2029-01-01";

-- Que Display Loan amount is Greater than 300000 and skip first 2 records
select * from loan
where Loan_amount>300000 
limit 3 offset 2;