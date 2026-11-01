# MySQL Practice Repository

![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
![GitHub](https://img.shields.io/badge/Platform-GitHub-black)

## About the Project

This repository contains my MySQL practice queries, SQL assignments, and database exercises. The main purpose of this repository is to develop a strong understanding of SQL concepts and improve my ability to retrieve, filter, manipulate, and analyse data stored in relational databases.

It includes basic to advanced SQL topics, practical examples, and queries designed to strengthen my problem-solving skills for technical interviews and real-world database tasks.

## Objectives

- Understand the fundamentals of SQL and relational databases.
- Retrieve specific information from database tables.
- Filter and sort records using SQL conditions.
- Perform calculations using aggregate functions.
- Analyse data using grouping and filtering techniques.
- Combine data from multiple tables using JOINs.
- Understand subqueries and window functions.
- Create, modify, and manage database tables.
- Practise SQL queries for interviews and data analysis.

## Topics Covered

### 1. SQL Basics

Learned the fundamental commands used to retrieve and display data from database tables.

**Concepts:**
- `SELECT`
- `SELECT *`
- `DISTINCT`
- `WHERE`

**Example:**
```sql
select emp_name, department
from employees
where department = 'IT';
```

### 2. Filtering Data

Filtering helps retrieve records that satisfy specific conditions.

**Operators and keywords:**
- `AND`
- `OR`
- `NOT`
- `BETWEEN`
- `IN`
- `LIKE`
- `IS NULL`
- `IS NOT NULL`

**Example:**
```sql
select *
from employees
where salary between 20000 and 50000;
```

### 3. Sorting and Limiting Data

These clauses control the order and number of records returned by a query.

**Concepts:**
- `ORDER BY`
- `ASC`
- `DESC`
- `LIMIT`
- `OFFSET`

**Example:**
```sql
select *
from employees
order by salary desc
limit 5;
```

### 4. Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

**Functions:**
- `COUNT()` – Counts records.
- `SUM()` – Calculates the total.
- `AVG()` – Calculates the average.
- `MIN()` – Returns the minimum value.
- `MAX()` – Returns the maximum value.

**Example:**
```sql
select department, avg(salary) as average_salary
from employees
group by department;
```

### 5. GROUP BY and HAVING

`GROUP BY` groups records with matching values. `HAVING` filters groups based on a condition, often involving aggregate functions.

**Example:**
```sql
select department, count(*) as total_employees
from employees
group by department
having count(*) > 5;
```

### 6. SQL Functions

SQL provides built-in functions to perform mathematical calculations and manipulate text and dates.

**Mathematical functions:**
- `ABS()`
- `ROUND()`
- `MOD()`
- `CEIL()`
- `FLOOR()`

**String functions:**
- `UPPER()`
- `LOWER()`
- `LENGTH()`
- `CONCAT()`
- `SUBSTRING()`
- `TRIM()`

**Date functions:**
- `NOW()`
- `CURDATE()`
- `YEAR()`
- `MONTH()`
- `DAY()`
- `DATEDIFF()`

**Example:**
```sql
select round(123.4567, 2) as rounded_value;
```

### 7. Conditional Logic

The `CASE` expression returns a result based on specified conditions. It is useful for categorising records.

**Example:**
```sql
select emp_name, salary,
case
    when salary >= 50000 then 'high salary'
    when salary >= 30000 then 'medium salary'
    else 'low salary'
end as salary_category
from employees;
```

### 8. Subqueries

A subquery is a query written inside another SQL query. It can be used to filter records or calculate values for the main query.

**Concepts:**
- Single-row subqueries
- Multiple-row subqueries
- Nested queries
- Subqueries with `IN`
- Subqueries with `EXISTS`

**Example:**
```sql
select emp_name, salary
from employees
where salary > (
    select avg(salary)
    from employees
);
```

### 9. Window Functions

Window functions perform calculations across related rows without combining them into a single row, allowing individual records to remain visible.

**Functions:**
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- `SUM() OVER()`
- `AVG() OVER()`

**Important clauses:**
- `OVER()`
- `PARTITION BY`
- `ORDER BY` inside the window definition

**Example:**
```sql
select emp_name, department, salary,
rank() over (
    partition by department
    order by salary desc
) as salary_rank
from employees;
```

### 10. JOIN Operations

JOINs combine records from two or more tables using related columns.

**Types of JOINs:**
- `INNER JOIN` – Returns matching records from both tables.
- `LEFT JOIN` – Returns all records from the left table and matching records from the right table.
- `RIGHT JOIN` – Returns all records from the right table and matching records from the left table.
- `CROSS JOIN` – Returns combinations of records from both tables.
- `SELF JOIN` – Joins a table with itself.

**Example:**
```sql
select employees.emp_name, departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id;
```

### 11. Database and Table Operations

These commands are used to create and manage databases and tables.

**Commands:**
- `CREATE DATABASE`
- `CREATE TABLE`
- `SHOW DATABASES`
- `SHOW TABLES`
- `DESCRIBE`
- `ALTER TABLE`
- `DROP TABLE`
- `TRUNCATE TABLE`

**Example:**
```sql
create table employees (
    emp_id int primary key,
    emp_name varchar(100) not null,
    salary decimal(10,2)
);
```

### 12. Data Manipulation Language (DML)

DML commands are used to insert, update, and delete table records.

**Commands:**
- `INSERT INTO`
- `UPDATE`
- `DELETE`

**Example:**
```sql
insert into employees (emp_id, emp_name, salary)
values (1, 'Rahul', 35000);
```

### 13. Constraints

Constraints help maintain data accuracy and integrity in database tables.

**Types of constraints:**
- `PRIMARY KEY` – Uniquely identifies each record.
- `FOREIGN KEY` – Establishes a relationship between tables.
- `NOT NULL` – Prevents a column from storing `NULL`.
- `UNIQUE` – Ensures values are unique.
- `DEFAULT` – Specifies a default value.
- `CHECK` – Enforces a specified condition.

**Example:**
```sql
create table orders (
    order_id int primary key,
    customer_id int,
    order_status varchar(30) default 'pending'
);
```

### 14. Data Relationships and Keys

Relational databases organise data using tables and relationships.

**Concepts:**
- Primary keys
- Foreign keys
- One-to-one relationships
- One-to-many relationships
- Many-to-many relationships

These concepts help organise related information and maintain referential integrity.

### 15. Practical SQL Exercises

The repository includes practice exercises based on common database tasks, such as:

- Retrieving employee and customer information.
- Filtering transactions by amount, location, and payment method.
- Finding recent orders using date sorting.
- Retrieving records based on text patterns.
- Calculating totals and averages.
- Grouping records by department or category.
- Comparing values across rows using window functions.
- Retrieving data from related tables.

## Tools and Technologies

- **MySQL:** Relational database management system.
- **MySQL Workbench:** Interface for writing and executing SQL queries.
- **Git:** Version control system.
- **GitHub:** Platform for hosting and managing the repository.

## Repository Structure

```text
MySql/
│
├── README.md
├── task-1.sql
├── task-2.sql
├── task-3.sql
└── other-practice-files.sql
```

*Note: Update the filenames and folder structure to match the actual files in your repository.*

## Learning Outcomes

Through this practice repository, I aim to:

- Improve my understanding of SQL syntax and database concepts.
- Write accurate and efficient SQL queries.
- Retrieve and analyse data using filtering and grouping.
- Apply aggregate and built-in functions.
- Understand subqueries and window functions.
- Combine related data using JOIN operations.
- Create and modify database tables.
- Strengthen my SQL problem-solving skills for interviews and practical projects.

## Future Learning Goals

- Practise more advanced SQL queries.
- Improve query optimisation and performance.
- Work with larger datasets.
- Solve SQL interview questions.
- Apply SQL concepts to real-world data analysis projects.

## Author

**Sakshi Shinde**

GitHub: [sakshi21shinde](https://github.com/sakshi21shinde)

---

⭐ This repository documents my continuous learning and practice in MySQL and SQL.
