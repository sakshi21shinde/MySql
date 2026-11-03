create database orders;
use orders;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO customers VALUES
(1, 'Amit Sharma', 'amit@gmail.com', 'Mumbai'),
(2, 'Neha Verma', 'neha@gmail.com', 'Pune'),
(3, 'Rahul Mehta', 'rahul@gmail.com', 'Delhi'),
(4, 'Priya Singh', 'priya@gmail.com', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Mobile Phone', 'Electronics', 25000.00),
(103, 'Headphones', 'Accessories', 3000.00),
(104, 'Office Chair', 'Furniture', 12000.00);

INSERT INTO orders VALUES
(1001, 1, '2025-01-05', 'Delivered'),
(1002, 2, '2025-01-06', 'Pending'),
(1003, 1, '2025-01-08', 'Cancelled'),
(1004, 3, '2025-01-09', 'Delivered');

INSERT INTO order_details VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 104, 1),
(5, 1004, 101, 1),
(6, 1004, 103, 1);

select * from customers;
select * from order_details;
select* from orders;
select * from products;


select product_id,product_name from products 
where product_id not in (
select product_id from  order_details);


select * from customers
where customer_id in(
select customer_id  from orders where status= "delivered");

select * from products
where price> (
select price from products 
where category="Furniture");

select * from products 
where price>(
select price from products
where category ="Accesories");

-- multicolumn subquery
select order_id,customer_id,order_date from orders
where (customer_id,order_date)in (
select customer_id,min(order_date) as order_date from orders
group by customer_id);

select customer_name from customers
where customer_id in (
select customer_id from orders);

select product_name from products
where product_name in(
select product_name from products);

select order_id from orders 
where product_id  in (
select product_id from products
where product_name="laptop");

select customer_name from customers 
where customer_id not in (
select customer_id from orders);

select product_name,price from products
where price in (
select max(price) from products);

select product_name from products
where product_name not in (
select product_name from products);

select product_name from products
where price >(
select avg(price) from products);

select order_id from order_details
where product_id  = (
select product_id from products 
where price<5000);

select * from orders
where order_date >(
select min(order_date) from orders);

select * from products
where price =(
select min(price) from products);

-- Task 1: Identify Transactions Above the Average Transaction Amount
select * from transactions 
where amount > (
select avg(amount) from transactions);

-- Task 2: Identify Accounts with Above-Average Balance
select * from accounts
where balance >(
select avg(balance) from accounts)
order by balance desc;

-- Task 3: Identify Deposit Accounts Using a Multi-Row Subquery
select Account_ID,Account_Type,Balance,C_ID from Accounts
where Account_ID in
(select Account_ID from Transactions
where Transaction_Type = "Deposit");

-- Task 4: Identify the Account with the Highest Balance
select * from accounts
where balance = (
select max(balance) from accounts);



