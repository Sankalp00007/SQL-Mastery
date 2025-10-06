create database gfg;
use gfg;
rename table data to products;

-- product name ends with s character
select * from products where product_name like "%S";

-- product name starts with s character 
select * from products where product_name like "S%";

-- find the product where brand name contains 'ad' in between 
select * from products where brand_name like '%ad%' ; 

-- find product where brand_name starts with 'p' and ends with 's'
select * from products where brand_name like 'p%s';

-- find product where brand_name exactly have 6 characters given by '_' spaces
select * from products where brand_name like '______';

-- find product where brand_name have 2nd character as 's'
select * from products where brand_name like '_s%';

