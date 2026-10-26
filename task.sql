create database bookstore_db;
create table customers(
customer_id int,
Full_name varchar(200),
Email varchar(200),
Phone int,
City varchar(100),
Created_date date); 

select * from customers;

create table orders(
Order_id int,
Customer_id int,
Order_date date,
Status varchar(100));

select * from orders;

create table books(
book_id int,
Author varchar(200),
Category varchar(100),
Price float,
Stock_qty int);

select * from books;
delete from books where book_id in (1, 2);

create table order_items(
order_item_id int,
order_id int,
book_id int,
quantity int);

select * from order_items;

alter table customers add column Country varchar(100);
alter table order_items add column discount float;
alter table customers modify column phone varchar(15);
alter table books rename column stock_qty to Stock_quantity;

alter table customers add constraint pk primary key (customer_id);
alter table orders add constraint pk primary key(Order_id);
alter table books add constraint pk primary key(book_id);
alter table order_items add constraint pk primary key(order_item_id);

alter table orders add constraint fk foreign key(customer_id) references customers(customer_id);
alter table order_items add constraint fkkk foreign key(order_id) references orders(order_id);
alter table order_items add constraint fk_order_items_book foreign key (book_id) references books(book_id);
alter table books add primary key (book_id);
alter table customers add constraint ukk unique(Email);
alter table customers modify column Full_name varchar(200) not null;
-- alter table books add constraint ck check(price>0);
alter table order_items add constraint checkk check(quantity>0);
alter table books add constraint checks check(stock_quantity>0);
alter table orders modify Status varchar(100) default "pending";
alter table Customers modify Created_date date default (Current_date);


insert into customers values(101,"Riya Sharma","riya123@gmail.com",9999999999,"Pune","2026-04-01","India");
insert into customers values(102,"Ajay Patil","ajay1@gmail.com",8888888888,"Pune","2026-05-05","India");
insert into customers values(103,"Riya Patel","riya123@gmail.com",9536456312,"Mumbai","2026-09-21","India");

insert into books values(1, 'A.P.J. Abdul Kalam', 'Biography', 350, 20);
insert into books values(2, 'Paulo Coelho', 'Fiction', 250, 15);
insert into books values(3, 'James Clear', 'Self-Help', -40, 30);
insert into customers values(103,"Siya","siya23@gmail.com",7777777777,"Hydrabad","India");
insert into orders values(201,105,"2025-05-04","Pending");
insert into books values(2, 'James Clear', 'Self-Help', -40, 30);



insert into customers values(104,"Amit Sharma","amit.1234@gmail.com",8545631510,"Nagpur","2024-04-04","India"),
(105,"Nitin Deshmukh","nitin2@gmail.com",9546123686,"Mumbai","2025-06-26","India"),(106,"Sakshi Shinde","sakshi21@gmail.com",9586757575,"Nashik","2026-09-21","India");

insert into books values
(301, 'A.P.J. Abdul Kalam', 'Biography', 350, 20),
(302, 'Paulo Coelho', 'Fiction', 250, 15),
(303, 'James Clear', 'Self-Help', 450, 30),
(304, 'Robert Kiyosaki', 'Finance', 300, 25),
(305, 'J.K. Rowling', 'Fantasy', 500, 10),
(306, 'Napoleon Hill', 'Self-Help', 280, 18),
(307, 'Eckhart Tolle', 'Spirituality', 320, 12),
(308, 'Hector Garcia', 'Self-Help', 275, 22),
(309, 'R.K. Narayan', 'Fiction', 200, 8),
(310, 'Ramachandra Guha', 'History', 600, 14);



insert into orders values(201,101,"2026-05-05","delivered"),(202, 102, "2026-05-05", "Delivered"),
(203, 103, "2026-02-02", "Pending"),
(204, 104, "2026-03-15", "Shipped"),
(205, 105, "2026-04-20", "Delivered"),
(206, 106, "2026-06-10", "Pending"),
(207, 101, '2026-07-12', 'Shipped'),
(208, 102, '2026-08-18', 'Delivered'),
(209, 104, '2026-09-05', 'Pending'),
(210, 105, '2026-10-01', 'Shipped');
insert into orders values
(207, 101, '2026-07-12', 'Shipped'),
(208, 102, '2026-08-18', 'Delivered'),
(209, 104, '2026-09-05', 'Pending'),
(210, 105, '2026-10-01', 'Shipped');


insert into order_items values
(1, 201, 301, 2, 10),
(2, 202, 302, 1, 0),
(3, 203, 303, 3, 15),
(4, 204, 304, 2, 5),
(5, 205, 305, 1, 0),
(6, 206, 306, 4, 20),
(7, 207, 307, 2, 10),
(8, 208, 308, 1, 5),
(9, 209, 309, 3, 0),
(10, 210, 310, 2, 15);
select * from orders;
select * from books;
select * from customers;

update books set price = price+(price*10/100) where Category="Self-help";
update orders set status="Shipped" where order_id=201;
update customers set city="Goa" where customer_id=102;







