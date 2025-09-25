use employees;

select * from Employees;

-- employees with age more than 30
select * from Employees where age > 30;

-- employees with age more than 30 and of sales department
select * from Employees where age > 30 and department ='Sales' ;

-- searching employee by the first character in their name
select * from Employees where name like 'J%' ;

-- marketing or sales people with age more than 30
select * from Employees where (department in ('Sales' ,'Marketing')) and age > 30 ;