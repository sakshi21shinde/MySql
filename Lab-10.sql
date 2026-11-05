create database subq;
use subq;
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Employee_Project (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);
INSERT INTO Departments VALUES
(1,'HR','Mumbai'),
(2,'IT','Pune'),
(3,'Finance','Delhi'),
(4,'Sales','Bangalore');

INSERT INTO Employees VALUES
(101,'Amit',50000,2,NULL),
(102,'Neha',60000,2,101),
(103,'Rahul',45000,1,NULL),
(104,'Pooja',70000,3,NULL),
(105,'Karan',40000,4,104),
(106,'Sneha',55000,2,101);
INSERT INTO Projects VALUES
(201,'Payroll System',2,300000),
(202,'Recruitment Portal',1,150000),
(203,'Accounting App',3,250000),
(204,'Sales Dashboard',4,200000);
INSERT INTO Employee_Project VALUES
(101,201,40),
(102,201,35),
(103,202,30),
(104,203,45),
(105,204,25),
(106,201,20);

select * from departments;
select * from employees;
select * from projects;
select * from employee_project;

-- QUe 1
select emp_name from employees
where salary >(
select avg(salary) from employees);

-- QUe
select emp_name from employees
where salary =(
select max(salary) from employees);

-- Que
select emp_name from employees
where salary <(
select salary from employees
where emp_name="Neha");

-- Views
-- q1
create view Q1 as 
select * from projects
where budget =(
select min(budget) from projects);

-- q2
create view Q2 as
select emp_name from employees
where dept_name =(
select * from departments
where emp_name="Karan");

-- q3
create view  q3 as 
select * from employees 
where salary=(
select min(salary) from employees);

-- q4
create view q4 as 
select emp_name from employees
where emp_id =  (
select emp_id from employee_project
order by hours_worked
limit 1);

-- q5
create view q5 as
select * from employees
where dept_id in(
select dept_id departments
where location in ("Pune" , "Mumbai"));

-- q6
create view q6 as
select * from employees
where dept_id in(
select dept_id from projects
where  


-- q7
create view q7 as
select emp_name from employees
where dept_id not in (
select dept_id from departments);

-- q8
create view q8 as
select * from employees
where dept_id=(
select dept_id from projects
where  budget=(
select max(budget) projects));

-- q9
create view q9 as
select * from employees
where salary>(
select avg(salary) from employees
where dept_id=(
select dept_id from employees
where emp_name="Karan"));

-- q10
select * from employees
where emp_id =(
select emp_id from employee_project
where hours_worked =(
select max(hours_worked) from employee_project)
);


-- q11
select emp_name, salary from employees
where salary > (
   select salary from employees
   where emp_id = (
select manager_id
from employees
where emp_name = 'Neha'
    )
);

-- q12
select distinct d.dept_name
from departments d
join employees e
on d.dept_id = e.dept_id
join projects p
on e.dept_id = p.dept_id
where p.budget > (
    select avg(budget)
    from projects
);

-- Task 1: Create a View for High-Balance Accounts
use bank;
create view High_balance as
select * from accounts
where balance>30000;

-- Task 2: Retrieve Data Using the View
select * from High_balance;

-- Task 3: Modify the View to Include Transaction Details
create or replace view High_balance as
select a.account_id,a.account_type,a.balance,a.c_id,
t.transaction_id,t.transaction_date,t.amount from accounts a 
inner join transactions t 
on a.account_id = t.account_id 
where a.balance >30000;

select * from high_balance;

-- Task 4: Generate Banking Reports Using the View
select account_id,account_type,balance,c_id,
transaction_id,transaction_date,amount from High_balance 
order by balance desc;










