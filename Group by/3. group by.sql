use gfg
select * from products;

-- finding the names of unique brands 
select distinct brand_name from products;

-- finding the number of unique brands 
select count(distinct brand_name) from products;

-- finding the number of products in each brands
select brand_tag, count(product_tag) from products group by brand_tag;

-- finding the top 5 brands who have the most number of products 
select brand_tag, count(product_tag) as 'products' from products
group by brand_tag
order by products desc limit 5; 

-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count)  as 'products_sold' from products 
group by brand_tag
order by products_sold desc limit 5;

-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price desc limit 5;

-- 7. Finding the top 5 least expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 
select product_tag, sum(rating_count)  as 'product_sold' from products 
group by product_tag
order by product_sold desc limit 5;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag, avg(discount_percent)  as 'avg_discount' from products 
group by brand_tag
order by avg_discount desc limit 5;

-- 10. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price)  as 'avg_price' from products 
group by product_tag
order by avg_price desc limit 5;

-- 11. Brand Report Card
select brand_tag, 
	sum(rating_count) as 'people_rated',
    min(marked_price) as 'min_mar_price',
    avg(marked_price) as 'avg_mar_price',
    max(marked_price) as 'max_mar_price' 
from products group by brand_tag;