SELECT * FROM bank.loan;
select Loan_amount, rank() over(order by Loan_amount desc) from loan;

select Loan_amount ,dense_rank() over(order by Loan_amount desc) from loan;

select Loan_amount ,row_number() over(order by Loan_amount desc) from loan;

select Loan_id,Customer_id,Loan_amount , row_number() over(partition by customer_id order by Loan_amount desc ) from loan;

select Loan_id ,customer_id,Loan_amount, sum(Loan_amount) over(order by Loan_amount desc) as Running_Total from loan;

select Loan_id,customer_id,Loan_amount,lag(Loan_amount)over(order by Loan_amount desc) as Previous_loan__amount from loan;

select Loan_id,customer_id,Loan_amount , lead(Loan_amount) over(order by Loan_amount desc) as Next_loan_amount from loan;