use Employees;

drop table if exists Employees;
create table if not exists Employees(
        employee_id serial primary key,
        first_name varchar(50), 
		last_name varchar(50),
        department varchar(50),
        hire_date date
        );
select * from  Employees;

-- Insert Values in single row 
insert into Employees(employee_id,first_name,last_name,department,hire_date)
values (1,"Sankalp","Lakhera","AIML","2025-09-5");
select * from Employees;

-- Insert Multiple  rows
insert into Employees(employee_id,first_name,last_name,department,hire_date)
	values 
		(2,"Jhon","Mendis","CS","2024-10-04"),
        (3,"Hari","Krishna","IOT","2025-01-05"),
        (4,"Mohan","lal","EC","2025-04-15");
select * from Employees;

-- ADD partial data 
insert into Employees(first_name,last_name)
		values
			("Ravi","Das");
select * from employees;            

-- Adding current date & default values
DROP Table if EXISTS ExampleTable;
CREATE TABLE if not exists ExampleTable (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Active');
Select * from ExampleTable; 

insert into ExampleTable(name) values("Sankalp");
select * from ExampleTable;

insert into ExampleTable(name) values("Manish"),("Parag"),("Hari");
select * from ExampleTable;

insert into ExampleTable(name,status) values ('Ashish','Inactive'),('Manish','Inactive'),('Parag','Inactive');
Select * from ExampleTable;


