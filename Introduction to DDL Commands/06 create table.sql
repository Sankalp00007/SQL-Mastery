use employees;

-- Table with constraints
create table employee (
	employee_id INT, 
    name VARCHAR(50) not null, 
    age INT check (age >= 18), 
    department VARCHAR(50));
select * from employee;


drop table if exists employee;
create table employee (
	employee_id SERIAL, 
    name VARCHAR(50) not null, 
    age INT check (age >= 18), 
    department VARCHAR(50),
    hire_date date);
select * from employee;