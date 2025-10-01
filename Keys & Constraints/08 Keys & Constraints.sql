use employees;

-- 1.Primary key 
drop table if exists Employees;
create table if not exists Employees(
        employee_id serial primary key,
        name varchar(50), department varchar(50)
        );
select * from  Employees;

-- 2.Composite key 
drop table if exists Orders;
create table if not exists Orders(
        order_id SERIAL,
        customer_id INT, order_date DATE,
        primary key(order_id, customer_id)
        );
select * from  Orders;

-- 3. Foreign key
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Employees (employee_id)
);
SELECT * FROM Orders;

-- Unique contraints
drop table if exists Employees;
create table if not exists Employees(
        employee_id serial primary key,
        email varchar(50) UNIQUE,
        name varchar(50), 
        department varchar(50)
        );
select * from  Employees;

-- Unique contraints
drop table if exists Employees;
create table if not exists Employees(
        employee_id serial primary key,
        email varchar(50) UNIQUE,
        phone INT UNIQUE,
        name varchar(50), 
        department varchar(50),
        UNIQUE(email,phone)
        );
select * from  Employees;

-- Check Constraint
DROP Table if EXISTS Employees;
CREATE TABLE if not exists Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    phone INT UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50),
    UNIQUE (email,phone));
Select * from Employees;        
        