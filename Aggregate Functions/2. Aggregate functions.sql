use gfg;
select * from products;

-- finding the number of products in the dataset
select count(product_name) as total_products from products;

-- Finding the average discounted price of products in the dataset
SELECT avg(discounted_price) as average_price FROM products ;
SELECT avg(marked_price) as average_price FROM products;

-- Finding the most expensive product on myntra
SELECT max(discounted_price) as average_price FROM products;
SELECT max(marked_price) as average_price FROM products;

-- Finding the least expensive product on myntra
SELECT min(discounted_price) as average_price FROM products ;
SELECT min(marked_price) as average_price FROM products ;

-- Find the total rating count of all products
SELECT sum(rating_count) as total_rating FROM products ;

-- find the total unique brands
select distinct(brand_name) as brands from products;

-- find number of brands
select count(distinct(brand_name)) as brands from products;
