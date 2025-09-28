use employees;

select *  from  employees;

-- basic case for sales team
select name,
case department
    when 'sales' then 'sales team'
    else 'other'
end as employee_name from employees;

-- cases with respect to age 
select name,
case 
    when age<30 then 'young'
    when age<=30 and age<=40 then 'mid-aged'
    else 'senior'
end as employee_name from employees;

-- Nested cases
select name,
case 
    when age<30 then 
	 case
         when department='sales' then 'Jr.Sales'
         else 'Junior'
         end
      when age>=30 and age<=40 then 'mid-aged'
      else 'senior'
end as employee_name from employees;

-- Dealing with null departments
select name,
case
	when department is null then 'No Department Assigned'
    else department
end as department_status from Employees;
