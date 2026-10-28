-- 1. Display customer Table

select * from customer;

-- 2. Display all customer FirstName in uppercase.
select first_name, upper(first_name) as new_name from customer;
-- 3. Display all customer FirstName in lowercase.d
select first_name, lower(first_name) as new_name from customer;

-- 4. Find the total number of characters in each customer FirstName
select First_name ,length(First_name) as lengthofname from customer;

-- 5. Display only the first three characters of customer FirstName .
select First_name ,left(First_name,3) from customer; 

-- 6. Combine customer's FirstName with LastName.
select concat(First_name," ", Last_name )as combine from customer;

select trim(First_name) as neww from customer;
select right(First_name , 2) as rightch from customer;
select mid(First_name,2) as midch from customer;


select first_name ,upper(First_name) as uppercase ,lower(First_name) as lowercase, length(First_name) as numberofcharacter , 
left(First_name,2) as leftcharacters, 
right(First_name,3) as rightcharacters, concat(First_name," ",Last_name) as combine,mid(First_name,2,1) as middle_characters ,trim(First_name) as neww from customer;






-- maths functions
-- round
select round(1225.32) as roundvalue , ceil(1225.32) ,floor(1225.32) , abs(-1225.32), mod(12,5);

-- 1. Display customer Table
select * from customer;

-- 2. Display the current system date
select current_date();

-- 3. Display the current system date and time.
select now();

-- 4. Display the Birth of year
select DateofBirth from customer;

select DateofBirth, year(DateofBirth) from customer;
-- 5. Display the Birth month
select DateofBirth, month(DateofBirth) from customer;

-- 6. Calculate the number of days since BirthDate
select DateofBirth, datediff(curdate() ,DateofBirth) from customer;

-- 7. Find the latest birth date.
select DateofBirth from customer
order by DateofBirth desc
limit 1;



-- 8. Find the earliest birth date
select DateofBirth from customer
order by DateofBirth 
limit 1;

-- 1. Categorize customers as Adult or Young based on their birth year
select year(DateofBirth), 
case when  year(DateofBirth)>1998 then "Young"
when  year(DateofBirth)<=1998 then "Adult"
end as Type from customer;

--  
-- 2. Display 'Not Available' if a phone number is NULL
select ifnull(phone,"Not Available") from customer;

--  
-- 3. Compare two customer names
--  
-- 4. Calculate the total balance maintained across all customer accounts.
select sum(balance) from accounts;

-- 5. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
select avg(balance) from accounts;

-- 6. Identify the highest balance maintained in any customer account.
select max(balance) from accounts;


-- 7. Identify the lowest balance maintained in any customer account
select min(balance) from accounts;

-- 8. Determine the total number of customer accounts available in the system.

select count(distinct(Account_id)) from accounts;

-- 9. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits from customers.
select Account_type,sum(balance) from accounts
group by Account_type;

-- 10. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select Account_type,sum(balance) from accounts
group by Account_type
having sum(balance)>25000;

