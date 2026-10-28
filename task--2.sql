
task--2.sql

100%
use bookstore_db;
create table emp(
sale_id int,
emp_name varchar(200),
department varchar(100),
sale_date date,
amount float);

select * from emp;

insert into emp values(1,"Amit","Electronics","2026-01-05",5000),
(2,"Neha","Electronics","2026-01-12",7000),
(3,"Ravi","Electronics","2026-01-20",7000),
(4,"Sara","Electronics","2026-02-03",3000),
(5,"John","Clothing","2026-01-08",4000),
(6,"Priya","Clothing","2026-01-15",6000),
(7,"Karan","Clothing","2026-02-01",6000),
(8,"Meena","Clothing","2026-02-10",2000),
(9,"Dev","Grocery","2026-01-10",1500),
(10,"Anil","Grocery","2026-01-25",2500),
(11,"Pooja","Grocery","2026-02-05",2500),
(12,"Rahul","Grocery","2026-02-15",1000);

select emp_name,department,amount, row_number() over(order by amount desc) as Row_numbers from emp;
select emp_name,amount, rank() over(order by amount desc) as Ranks from emp;
select emp_name,amount, dense_rank() over(order by amount desc) as Ranks from emp;
select emp_name,department,sale_date,amount, sum(amount) over(partition by department order by sale_date) as Running_total from emp;
select emp_name,department,sale_date,amount, avg(amount) over(partition by department ) as average from emp;
select emp_name ,department,amount ,min(amount) over(partition by department) as min_dept from emp;
select emp_name,department,sale_date,amount ,lag(amount)over(partition by department order by sale_date) as next_amount from emp;
select emp_name,department,sale_date,amount ,lead(amount)over(partition by department order by sale_date) as next_amount from emp;
