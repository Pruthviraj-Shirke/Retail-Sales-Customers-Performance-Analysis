-- USE PROJECT 1;

-- Sales Analysis

-- Sales by Region: Which region has generated the highest total sales revenue?

Select * from sales_data1

select region,sum (unit_price) as total_sales_revenue
from sales_data1
group by region
order by sum(unit_price) desc;

-- Total Revenue: What is the total revenue generated across all transactions?

Select sum(unit_price)  as Total_Revenue
from sales_data1

-- Monthly Sales Trend: Calculate the total revenue generated per month to see seasonal trends.

select month(order_date) As Months,
       sum(unit_price) as total_revenue
       from sales_data1
       group by month(order_date)
       order by Months desc;

-- Quarterly Revenue Growth: What is the total revenue per quarter?

select datepart(quarter,order_date) as Quarters,
       sum(unit_price) as Total_revenue
from sales_data1
group by datepart(quarter,order_date)
order by Total_revenue desc;


-- Customer Insights :


-- Customer Distribution by Region: How many unique customers are there in each region?

select region,
       count(distinct(customer_id)) as Nu_of_customers 
       from sales_data1
       group by region
       order by Nu_of_customers desc


--Top 5 Customers by Revenue: Who are the top 5 customers who have spent the most money?

SELECT TOP 5 
        C.customer_id, EMAIL,C.GENDER,C.REGION,C.LOYALTY_TIER,
        SUM(S.UNIT_PRICE)  AS TOTAL_SPEND
FROM customer_info C 
    JOIN 
         sales_data1 S
   ON C.CUSTOMER_ID = S.CUSTOMER_ID
        GROUP BY C.EMAIL,C.GENDER,C.REGION,C.LOYALTY_TIER,C.customer_id
        ORDER BY SUM(S.UNIT_PRICE) DESC  ; 

-- Purchase Frequency: What is the average number of transactions per customer?
 
 WITH CUSTOMER_TRANSACTION_COUNT 
      AS (
           SELECT CUSTOMER_ID, COUNT(DISTINCT ORDER_ID) AS TRANSACTIONS
 FROM sales_data1
           GROUP BY CUSTOMER_ID
                                )
  SELECT 
          CUSTOMER_ID, 
          AVG(TRANSACTIONS) AS Avg_Transactions_Per_Customer 
 FROM CUSTOMER_TRANSACTION_COUNT
      GROUP BY CUSTOMER_ID;


-- Revenue by Loyalty Tier: Which loyalty tier contributes the most to total revenue? 

SELECT 
     C.LOYALTY_TIER, 
      SUM(S.UNIT_PRICE) AS REVENUE 
FROM customer_info C
        JOIN 
     sales_data1 S 
       ON
 C.CUSTOMER_ID = S.CUSTOMER_ID 
    GROUP BY C.LOYALTY_TIER
    ORDER BY SUM(S.UNIT_PRICE)
                 DESC ;

-- Gender-Based Spending: What is the average spend per transaction for each gender group?

SELECT
      C.GENDER,
       ROUND(AVG(S.unit_price),2) AS AVG_TRANSACTION
FROM CUSTOMER_INFO C
         JOIN 
     sales_data1 S 
          ON 
C.customer_id = S.customer_id 
        GROUP BY C.GENDER 
        ORDER BY ROUND(AVG(S.unit_price),2)
               DESC ;


-- Product Analysis

-- Top Selling Products (Quantity): Which are the top 10 products based on the total quantity sold?

select TOP 10 
     p.product_id,
     p.product_name,
     sum(s.quantity) AS QUANTITY_SOLD
from product_info p
     join 
sales_data1 s 
      on 
p.product_id = s.product_id
         group by p.product_id,p.product_name
         ORDER BY sum(s.quantity) DESC;


-- Least Popular Products: Which products have been sold less than least times in total?
select top 1 
     p.product_id,
     p.product_name,
     sum(s.quantitY)  AS QUANTITY_SOLD
from product_info p
     join 
sales_data1 s 
      on 
p.product_id = s.product_id
     group by  p.product_id, p.product_name
     order by sum(s.quantity);


-- Revenue by Product Category: Which product category generates the highest revenue?

select 
    p.category,
    sum(s.unit_price) AS Revenue
from product_info p
       join
sales_data1 s 
      on 
p.product_id = s.product_id
         group by p.category
      order by sum(s.unit_price) desc;


-- Product Pricing Strategy: What is the average price of products in each category?
SELECT 
    category, 
    ROUND(AVG(base_price),2) AS Avg_Price
FROM product_info
GROUP BY category
ORDER BY Avg_Price DESC;