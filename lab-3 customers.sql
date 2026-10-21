SELECT * FROM bank.customer;

insert into  customer values(101,"Rahul","Sharma","rahul.sharma@gmail.com",9999999999,"1998-04-15");
insert into  customer values(102,"Priya","Patil","priya@gmail.com",9988776655,"2000-09-20");
insert into  customer values(103,"Amit","Patel","amit.patel@gmail.com",9876500001,"1995-06-18");
insert into  customer values(104,"Sneha","Joshi","sneha.joshi@gmail.com",9999999999,"1998-04-15");
insert into  customer values(105,"Rohan","Kulkarni","rohan.k@gmail.com",98765000003,"1993-11-25");

update customer set phone=8888888888 where customer_id=101;
update customer set Email="rahul_sharma@gmail.com" where Customer_id=101;

