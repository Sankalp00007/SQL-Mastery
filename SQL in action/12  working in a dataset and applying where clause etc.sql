use gfg;
select * from products;

select product_name , brand_name from products;

-- mathematical operation for discounted amount
select product_name , brand_name ,  marked_price , discounted_price, marked_price - discounted_price  AS discounted_amount from products;

-- create new column with mathemtical functions | Making Rating Count * Rating
select product_name, brand_name, rating, rating_count,   rating*rating_count AS rating_filter from products ;

-- create new column with mathemtical functions | Making Discount Percentage
select product_name, brand_name, marked_price, discounted_price,  ((marked_price -  discounted_price)/marked_price)*100 AS discounted_percent from products ;

-- distinct values gathering
select distinct(brand_name) from products;

-- Adding where clause 
select product_name, brand_name, marked_price, discounted_price from products where brand_tag = 'Adidas';

-- Adding Distinct with Where | Unique Products served by Adidas
select distinct(product_tag), brand_name from products where brand_tag = 'Adidas';

-- Adding Distinct with Where | Unique Products served by Adidas
select count(distinct(product_tag)) from products where brand_tag = 'Adidas';

-- Products with Multiple Where Clause with AND
select product_name, brand_name, marked_price, discounted_price from products where brand_tag = 'Adidas' and discounted_price > 5000;
select product_name, brand_name, marked_price, discounted_price from products where discounted_price > 5000 and discounted_price < 8000;

-- Products with BETWEEN
select product_name, brand_name, marked_price, discounted_price from products where discounted_price between 5000 and 8000;

-- Adding more filters
select product_name, brand_tag, marked_price, discounted_price from products 
where (discounted_price between 5000 and 8000) and brand_tag = 'Adidas' and rating > 4;

-- Lets go one steps ahead
select product_name, brand_tag, marked_price, discounted_price from products 
where (discounted_price between 3000 and 8000) and 
brand_tag = 'Adidas' 
and rating > 4
and rating_count > 10;

select count(distinct(product_tag)) from products where brand_tag = 'adidas';

-- using OR
select product_name, product_tag,brand_tag,discounted_price from products
where (brand_tag = 'adidas' or brand_tag = 'puma');

-- Using NOT
select product_name, product_tag,brand_tag, discounted_price from products
where not(brand_tag = 'Adidas' or brand_tag = 'Puma') and discounted_price between 3000 and 5000;

-- Using IN similar way of or
select product_name, product_tag,brand_tag, discounted_price from products
where brand_tag in ('Adidas', 'Puma') and discounted_price between 3000 and 5000;

-- Using NOT IN similar way of not
select product_name, product_tag,brand_tag, discounted_price from products
where brand_tag not in ('Adidas', 'Puma') and discounted_price between 3000 and 5000;



