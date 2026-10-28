-- TASK_1
create database Bank;

use Bank;

create table Accounts(
AccountID int,
AccountType varchar(20),
Balance float(10,2));

select * from Accounts;

create table Transactions(
TransactionID int,
TransactionDate date,
Amount float,
TransactionType varchar(20));

select * from Transactions;

create table Branches(
BranchID int,
BranchName varchar(200),
BranchAddress varchar(200),
BranchPhone varchar(15));

select * from Branches;


create table AccountBranches(
AssignmentDate int);

select * from AccountBranches;

alter table AccountBranches modify AssignmentDate date;

create table Loans(
LoanID int,
LoanAmount float,
InterestRate float,
StartDate date,
EndDate date);

select * from Loans;

create table Customer(
CustomerID int,
FirstName varchar(200),
LastName varchar(200),
email varchar(100),
Phone varchar(15));

select * from Customer;

-- TASK_2

alter table Customer add column DateOfBirth date;

alter table Customer modify Phone varchar(20);

alter table Accounts modify Balance float;

alter table bank.accounts add constraint ck check(Balance>1000);

-- TASK_3

drop table accountbranches;

-- TASK_4

alter table bank.customer add constraint pk primary key(CustomerID);

alter table bank.customer modify FirstName varchar(200) not null;

alter table bank.customer add constraint uk unique(email);

ALTER TABLE Accounts ADD CustomerID INT;

ALTER TABLE Accounts ADD CONSTRAINT FK_Accounts_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

-- TASK_5

SELECT * FROM bank.loans;

alter table bank.loans add column CustomerID int;

alter table bank.loans add constraint CustomerID foreign key (CustomerID) references customer(CustomerID);

alter table transactions add column AccountID int;

alter table accounts add constraint pk primary key (AccountID);

alter table transactions add constraint AccountID foreign key (AccountID) references accounts(AccountID);

alter table accounts add column BranchID int;

alter table branches add constraint pk primary key (BranchID);

alter table accounts add constraint BranchID foreign key (BranchID) references branches (BranchID);		

















