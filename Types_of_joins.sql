create table manager(
id int,
name varchar(200),
m_id int);
select * from manager;
insert into manager values(1,"abc",2),(2,"xyz",default),(3,"kgf",2),(4,"mno",1),(5,"pqr",1);

select m1.name,m2.name as manager_name from manager m1
left join manager m2
on m1.m_id = m2.id;


use clg;
SELECT * FROM clg.course
join student;

-- Full join(left + right joins)
select * from course c 
left join student s 
on c.course_id = s.name 
union
select * from course c 
right join student s 
on c.course_id = s.name ;

-- JOINS TASK-2

create table departments (
dept_id int primary key,
dept_name varchar(50));

create table employees (
emp_id int primary key,
emp_name varchar(50),
dept_id int,
manager_id int,
salary int,
city varchar(50));

create table projects (
project_id varchar(5) primary key,
project_name varchar(50),
dept_id int,
budget int);

create table assignments (
assign_id int primary key,
emp_id int,
project_id varchar(5),
hours int);

alter table employees add constraint fk_emp_dept foreign key (dept_id) references departments(dept_id);
alter table projects add constraint fk_project_dept foreign key (dept_id) references departments(dept_id);
alter table assignments add constraint fk_assign_emp foreign key (emp_id) references employees(emp_id);
alter table assignments add constraint fk_assign_project foreign key (project_id) references projects(project_id);
alter table employees add constraint fk_emp_manager foreign key (manager_id) references employees(emp_id);

-- insert into departments values(1, 'Sales'), (2, 'HR'),(3, 'IT'),(4, 'Finance'),(5, 'Marketing');

-- insert into employees values
-- (101, 'Amit', 3, NULL, 90000, 'Pune'),
-- (102, 'Neha', 3, 101, 60000, 'Mumbai'),
-- (103, 'Rahul', 1, 104, 45000, 'Pune'),
-- (104, 'Sara', 1, NULL, 80000, 'Delhi'),
-- (105, 'Priya', 2, 106, 40000, 'Mumbai'),
-- (106, 'Karan', 2, NULL, 70000, 'Pune'),
-- (107, 'Anil', NULL, 101, 35000, 'Delhi'),
-- (108, 'Meera', 4, 104, 50000, 'Mumbai');
select * from employees;

insert into employees values
(101, 'Amit', 3, NULL, 90000, 'Pune'),
(104, 'Sara', 1, NULL, 80000, 'Delhi'),
(106, 'Karan', 2, NULL, 70000, 'Pune'),
(102, 'Neha', 3, 101, 60000, 'Mumbai'),
(103, 'Rahul', 1, 104, 45000, 'Pune'),
(105, 'Priya', 2, 106, 40000, 'Mumbai'),
(107, 'Anil', NULL, 101, 35000, 'Delhi'),
(108, 'Meera', 4, 104, 50000, 'Mumbai');

insert into projects values
('P1', 'Website Revamp', 3, 500000),
('P2', 'Sales Dashboard', 1, 300000),
('P3', 'Payroll System', 4, 400000),
('P4', 'Brand Campaign', 5, 250000),
('P5', 'Cloud Migration', 3, 350000);

insert into assignments values
(1, 101, 'P1', 120),
(2, 102, 'P1', 80),
(3, 102, 'P5', 60),
(4, 103, 'P2', 90),
(5, 104, 'P2', 40),
(6, 106, 'P3', 30),
(7, 108, 'P3', 100);


-- inner joins
-- Q1 Employees with their department
select e.emp_name, d.dept_name from employees e 
inner join departments d 
on e.dept_id = d.dept_id;

-- Q2 Projects with owning department
select p.project_name, d.dept_name from departments d 
inner join projects p 
on d.dept_id = p.dept_id;

-- Q3 Employee, project and hours
select e.emp_name,p.project_name,a.hours from employees e 
inner join projects p 
on e.dept_id = p.dept_id
inner join assignments a 
on e.emp_id = a.emp_id;

-- Q4 IT employees earning > 55,000
select  e.emp_name, d.dept_name, e.salary from employees e 
inner join departments d 
on e.dept_id= d.dept_id
where dept_name="IT" and salary> 55000;

-- LEFT JOINS 
-- Q5 All employees + department
select e.emp_name, d.dept_name from employees e 
left join departments d on e.dept_id = d.dept_id;

-- Q6 All employees + their projects
select e.emp_name, p.project_name from employees e
 left join assignments a 
 on e.emp_id = a.emp_id 
 left join projects p
 on a.project_id = p.project_id;
 
-- Q7 Employees with no project
select e.emp_name from employees e 
left join assignments a 
on e.emp_id = a.emp_id
 where a.project_id is null;
 
-- Q8 Total hours per project
select p.project_name, sum(a.hours) as total_hours from projects p 
inner join assignments a
 on p.project_id = a.project_id
 group by p.project_id, p.project_name;
 
 -- RGHT JOINS
 -- Q9 All departments + employees
select d.dept_name, e.emp_name from employees e
 right join departments d 
 on e.dept_id = d.dept_id;
 
-- Q10 Departments with no employees
select d.dept_name from employees e 
right join departments d 
on e.dept_id = d.dept_id 
where e.emp_id is null;

-- Q11 All projects + assigned staff
select p.project_name, e.emp_name from employees e 
right join assignments a 
on e.emp_id = a.emp_id 
right join projects p
 on a.project_id = p.project_id;
 
-- Q12 Employee with manager name
select e.emp_name, m.emp_name as manager_name from employees e 
inner join employees m 
on e.manager_id = m.emp_id;
 
-- Q13 Employees with no manager
select e.emp_name from employees e
 left join employees m
 on e.manager_id = m.emp_id 
 where e.manager_id is null;
 
-- Q14 Earn more than their manager
select e.emp_name, e.salary, m.emp_name as manager_name, m.salary as manager_salary from employees e 
inner join employees m 
on e.manager_id = m.emp_id
 where e.salary > m.salary;
 
-- Q15 Same-city employee pairs
select e.emp_name, m.emp_name, e.city from employees e 
inner join employees m 
on e.city = m.city and e.emp_id < m.emp_id;


