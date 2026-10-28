-- TASK 1
select * from customer;
insert into customer values (101,"Rahul","Sharma","rahul.sharma@gmail.com",9999999999,"1998-04-15"),
(102,"Priya","Patil","priya@gmail.com",9988776655,"2000-09-20"),
(103,"Amit","Patel","amit.patel@gmail.com",9876500001,"1995-06-18"),
(104,"Sneha","Joshi","sneha.joshi@gmail.com",9856483210,"1997-09-12"),
(105,"Rohan","Kulkarni","rohan.k@gmail.com",9846261235,"1993-11-25");

select * from loans;
insert into loans values (301,500000.00,8.50,"2025-01-15","2030-01-15",101),
(302,300000.00,9.25,"2025-02-10","2028-02-10",102),
(303,750000.00,8.75,"2025-03-20","2032-03-20",103),
(304,250000.00,10.00,"2025-04-05","2029-04-05",104),
(305,100000.00,7.95,"2025-05-12","2035-05-12",105);

select * from accounts;
insert into accounts values (201,"Savings",25000.00,101,default),
(202,"Current",40000.00,102,default),
(203,"Savings",35000.00,103,default),
(204,"Current",60000.00,104,default),
(205,"Savings",45000.00,105,default);

select * from transactions;
insert into transactions values (301,"2025-05-10",5000.00,"Deposit",201),
(302,"2025-05-11",2500.00,"Withdraw",202),
(303,"2025-05-12",10000.00,"Deposit",203),
(304,"2025-05-13",3000.00,"Withdraw",204),
(305,"2025-05-14",7000.00,"Deposit",205);

select * from branches;
insert into branches values (1,"Mumbai Branch","Andheri, Mumbai",0221111111),
(2,"Pune Branch","Shivaji Nagar, Pune",0202222222),
(3,"Nashik Branch","College Road, Nashik",0253222222),
(4,"Nagpur Branch","Sitabuldi, Nagpur",0712333333),
(5,"Navi Mumbai Branch","Vashi, Navi Mumbai",0224444444);


-- TASK 2
update customer set Phone=8888888888 where customerID=101;
update customer set email="rahul_sharma@gmail.com" where customerID=101;
select * from customer;

update accounts set balance=30000 where AccountID=201;
select * from accounts;


-- TASK 3
delete from transactions where transactionID=302;
select * from transactions;

delete from accounts where accountID=202;
select * from accounts;




