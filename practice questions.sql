use demo;
create table employees(
emp_id int,
emp_name varchar(200),
dept varchar(200),
city varchar(100),
salary int,
hire_date date,
manager_id int);
select * from employees;

insert into employees values(1,"Aarav Shah","IT","Pune",72000,"2021-03-15",default),
(2,"Sneha Rao","HR","Mumbai",48000,"2022-07-01",1),
(3,"Karan Mehta","Sales","Delhi",55000,"2023-01-10",1),
(4,"Priya Nair","IT","Pune",64000,"2020-11-23",1),
(5,"Ramesh Iyer","Finance","Mumbai",59000,"2019-05-30",default),
(6,"Anita Desai","Sales","Pune",41000,"2024-02-12",3);

select * from employees
where hire_date between "2022-01-01" and "2023-12-31";

select emp_name , salary  from employees
where dept like("IT") ;

select emp_name ,city , salary from employees
where salary>50000 and city like("Pune");

 select emp_name ,city,manager_id from employees
 where city regexp("Mumbai"|"Pune"|"Delhi") or manager_id is NULL;

select emp_name from employees 
where emp_name like("A%");

select emp_name from employees
where emp_name like("$sh"); 

select emp_name from employees
where emp_name like("%an%");

select * from employees
where dept like"_a___";

select dept , count(*) as total_emp from employees
group by dept;

select city, avg(salary) as avg_salary from employees
group by city;

select dept,sum(salary) as total_salary ,max(salary) as highest_salary
from employees group by dept;

select dept,city, count(*) as total_emp from employees
where salary>30000 group by dept ,city;

select dept ,count(*) as total_emp from employees
group by dept 
having count(*)>3;

select city,avg(salary) as avg_salary from employees
group by city
having avg(salary) >60000;

select dept,sum(salary) as total_salary from employees
group by dept
having sum(salary) between 200000 and 500000;

select * from employees
order by salary desc limit 5;

select * from employees
order by hire_date desc limit 3;

select * from employees
order by salary desc
limit 5 offset 5;

select distinct salary from employees
order by salary desc
limit 1 offset 2;

select city, count(*) as total_employees from employees
 where emp_name like 's%' group by city order by total_employees desc
 limit 3;
 
 select * from employees 
 where city = 'pune' order by emp_name asc limit 10 offset 20;
 
 select dept, avg(salary) as average_salary, count(*) as total_employees from employees where hire_date > '2021-12-31'
 group by dept having count(*) > 2 order by average_salary desc limit 2 offset 1;
 
 select city, count(*) as total_employees from employees where emp_name like '%ar%'
 group by city having count(*) >= 2 order by total_employees desc limit 3;















