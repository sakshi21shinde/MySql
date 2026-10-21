create database bank;
use bank;
create table accounts(
Account_id int,
Account_type varchar(20),
balance float);
select * from accounts;

create table transactions(
Transaction_id int,
Transaction_date date,
Amount float,
Transaction_type varchar(20));

select * from transactions;

create table branches(
Branch_id int,
Branch_name varchar(100),
Branch_address varchar(200),
Branch_phone varchar(15));
select * from branches;

create table AccountBranches(
AssignmentDate date);
select * from AccountBranches;

create table Loan(
Loan_id int,
Loan_amount float,
Intrest_rate float,
Start_date date,
End_date date);
select * from Loan;

create table customer(
Customer_id int,
First_name varchar(50),
Last_name varchar(50),
Email varchar(100),
Phone varchar(15));
select * from customer;

alter table customer add DateofBirth date;
alter table customer modify column phone varchar(20);
SELECT * FROM bank.accounts;
alter table accounts add column c_id int;
alter table accounts add constraint fk foreign key(c_id) references customer(customer_id);




