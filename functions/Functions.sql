USE swiggy;
SELECT * FROM messy_indian_dataset;

-- Function to Calculate Age
drop function if exists CalculateAge;
delimiter //
create function CalculateAge(birthdate DATE) RETURNS INT
deterministic
begin 
	declare age int;
    set age = YEAR(CURDATE()) - YEAR(birthdate);
    return age;
end //
delimiter ;
select CalculateAge('2005-04-07') as age;

-- Function to Categorize Age

drop function if exists GetAgeCategory;
delimiter //
create function GetAgeCategory(age INT) RETURNS VARCHAR(20)
deterministic
begin 
	declare category varchar(20);
    if age < 18 then
		set category = 'child';
	elseif age between 18 and 65 then
		set category = 'adult';
	else
		set category = 'senior';
	end if;
    
    return category;
end //
delimiter ;

select GetAgeCategory(19) as category;