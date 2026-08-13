create table zepto (
sku_id serial primary key,
category varchar(255),
name varchar(255) not null,
mrp numeric,
discount_percent numeric,
available_quantity integer,
discounted_selling_price integer,
weight_in_gms integer,
out_of_stock boolean,
quantity integer );
drop table if exists zepto;
select  * from zepto
--- 1.find the null values for each columns 
select * from zepto 
where category is null or
       name is null or
	   mrp is null or
	   discount_percent is null or
	   available_quantity is null or
	   discounted_selling_price is null or
	   weight_in_gms is null or 
	   out_of_stock is null or
	   quantity is null;
---2.find product category wise 
select dis