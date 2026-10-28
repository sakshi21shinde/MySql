SELECT * FROM bank.loan;
select Loan_amount, rank() over(order by Loan_amount desc) from loan;

select Loan_amount ,dense_rank() over(order by Loan_amount desc) from loan;

select Loan_amount ,row_number() over(order by Loan_amount desc) from loan;

select Loan_id,Customer_id,Loan_amount , row_number() over(partition by customer_id order by Loan_amount desc ) from loan;
insert into loan values(306,30000,7.5,"2026-01-01","2027-04-04",101);

select Loan_id ,customer_id,Loan_amount, sum(Loan_amount) over(order by Loan_amount desc) as Running_Total from loan;

select Loan_id,customer_id,Loan_amount,lag(Loan_amount)over(order by Loan_amount desc) as Previous_loan__amount from loan;

select Loan_id,customer_id,Loan_amount , lead(Loan_amount) over(order by Loan_amount desc) as Next_loan_amount from loan;


SELECT * FROM bank.transactions;

select Transaction_type, amount, row_number() over() from transactions;

select Transaction_type , amount , row_number() over(order by amount) from transactions;

select Transaction_type , amount , row_number() over (order by amount desc) from transactions;

select Transaction_type , amount, row_number() over(partition by Transaction_type order by amount) from transactions;

select Transaction_date,amount,Transaction_type,
lag(amount) over(order by Transaction_date),
lag(amount) over(partition by Transaction_type order by Transaction_date) 
from transactions;

select Transaction_date,amount, Transaction_type,
lead(amount) over(order by Transaction_date),
lead(amount) over(partition by transaction_type order by Transaction_date)
from transactions;