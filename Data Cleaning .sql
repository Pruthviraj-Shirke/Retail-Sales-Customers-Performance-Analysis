--USE PROJECT 1

--Cleaning Process 

--1.customer_info table cleaned 

--Fix Inconsistent 'gender' values

select * from customer_info

update customer_info 
set gender =case
                when lower(gender) like 'mal%' then 'Male'
                when lower(gender) like 'fem%' then 'Female'
                else 'other'
                END

--Fix Inconsistent 'loyalty_tier' casing and trim whitespaces

update customer_info set loyalty_tier= upper(trim(loyalty_tier))

--SET 'null' region as an 'Unknown'

update customer_info set region= 'Unknown'
where region is null

--Clean Email in standardize format

update customer_info set email= lower(trim(email))
where email is not null

-- FIX loyalty_tier in Standard fromat

update customer_info
set loyalty_tier = case 
                    when upper(trim(loyalty_tier))='GLD' then 'GOLD'
                    when upper(trim(loyalty_tier))='NULL' then 'UNKNOWN'
                    when upper(trim(loyalty_tier))='BRNZE' then 'BRONZE'
                    when upper(trim(loyalty_tier))='SLLVER' then 'SILVER'
                    else loyalty_tier
                    end;


-- 2.product_info table Cleaned 

select * from product_info

--Standardize Product Categories (Trim extra spaces and capitalize properly)

UPDATE product_info
SET category = (TRIM(category))
WHERE category IS NOT NULL;

--Handle Missing Product Names
UPDATE product_info
SET product_name = 'Unspecified Product'
WHERE product_name IS NULL


--3.sales_data1 table Cleaned

select * from sales_data1

-- handling null values in unit_price

update sales_data1
set unit_price= 0.00
where unit_price is null;

--Handle Missing or Invalid Quantities (Default to 1 if null or zero/negative)

UPDATE sales_data1
SET quantity = 1
WHERE quantity IS NULL OR quantity <= 0;

--Removing record where order_date is null

delete from sales_data1
where order_date is null

-- To set Delivery_status column in proper Manner

update sales_data1 
set delivery_status = case
                         when trim(delivery_status) = 'DELAYED' then 'Delayed'
                         when trim(delivery_status)= 'delivered' then 'Delivered'
                         when trim(delivery_status)= 'delyd' then 'Delayed'
                         when trim(delivery_status)= 'delrd' then 'Delivered'
                         else delivery_status
                         end;

--4. Verification Queries

-- Check distinct values in customer attributes

select distinct gender from customer_info;

select distinct loyalty_tier from customer_info;

select distinct region from customer_info;

-- Check product data ranges and anomalies

select
    MIN(base_price) AS min_price, 
    MAX(base_price) AS max_price 
from product_info;

-- Check sales data quantities and prices

Select
    MIN(quantity) AS min_qty, 
    MAX(quantity) AS max_qty,
    MIN(unit_price) AS min_sales_price
from sales_data1;

