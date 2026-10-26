SELECT * FROM bank.customer;
-- Que Retive customer_id between 101 and 104
select * from customer 
where Customer_id between 101 and 104;

select * from customer
where Customer_id in (101,102,103,104);

select * from customer
where Customer_id =101 or Customer_id=102 or Customer_id=103 or Customer_id=104;

-- Que Retrive customer where customer_id is 104 otherwise 105
select * from customer 
where Customer_id=104 or Customer_id=105;

-- Que Display customers born after 1 January 1998

select * from customer
where DateofBirth >"1998-01-01";

-- Que fetch customer records with limit 2 offset 1
select * from customer
limit 2 offset 1;

-- Que fetch the customer records whose customer name is rahul otherwise sneha
select * from customer
where First_name="Rahul" or First_name="Sneha";

-- This displays customers whose names start with the letter R.
select * from customer
where First_name like "R%";

-- Retrieve customer records for CustomerID 104 and 105
select * from customer
where customer_id  in (104 ,105);

-- Display customers whose last name starts with S
select * from customer
where Last_name regexp ("^S");

-- Display Customers in Alphabetical Order
select * from customer
order by First_name ;

-- Display customers sorted by LastName
select * from customer
order by Last_name asc;

-- Find Customers Without Phone Numbers
select * from customer
where phone is null;

-- Find Customers Having Email Addresses
select * from customer
where Email is not null;

-- Find customers without email addresses
select * from customer
where Email is null;

-- Search Customers Whose First Name Starts with “A”
select * from customer
where First_name regexp("^A");

-- Search Customers Whose Email Contains “gmail”
select * from customer
where Email regexp ("gmail");

-- Search Customers Whose Last Name Ends with “kar”
select * from customer
where Last_name regexp("$kar");

-- Find customers whose email contains yahoo
select * from customer
where Email in ("yahoo");

-- Display customers whose last name starts with P
select * from customer
where Last_name regexp("^P");

-- Search customers whose phone number ends with 99
select * from customer
where phone regexp('99$');

-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
select * from customer
where Customer_id in (101,102,105);

-- Display customer records for CustomerID 103 and 104
select * from customer
where Customer_id in (103,104);

-- Display Customers in Ascending Order of Last Name
select * from customer
order by Last_name asc;

 -- Display customers sorted by FirstName
 select * from customer
 order by First_name asc;
 
 -- Display customers sorted by DateOfBirth
 select * from customer
 order by DateofBirth asc;
 
  -- Retrieve only 4 customer records
  select * from customer
  limit 4;







