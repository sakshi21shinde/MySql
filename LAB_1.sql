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

alter table Customer add column DateOfBirth date;

alter table Customer modify Phone varchar(20);

alter table Accounts modify Balance float;














