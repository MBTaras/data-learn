-- Overview -----------------

-- Total Sales
select ROUND(sum(sales)) as total_sales from orders;

-- Total Profit
select ROUND(sum(profit)) as total_profit from orders;

-- Profit Ratio
select ROUND((sum(profit) / sum(sales)), 2) as profit_ratio from orders;

-- Profit per Order
SELECT ROUND((SUM(profit) / COUNT(DISTINCT order_id)), 2) AS profit_per_order 
FROM orders;

-- Sales per Customer
SELECT ROUND((SUM(sales) / COUNT(DISTINCT customer_id)), 2) AS sales_per_customer
FROM orders;

-- Avg. Discount
select round(AVG(discount), 2) as avg_discount from orders; 

-- Monthly Sales by Segment
select date_trunc('month', order_date) as month, segment, round(sum(sales), 2) as sales from orders
group by month, segment  
order by segment, month;

-- Monthly Sales by Product Category
select date_trunc('month', order_date) as month, category, round(sum(sales), 2) as sales from orders
group by month, category  
order by category, month;

-- Customer Analysis -----------------

-- Sales and Profit by Customer

select count(distinct customer_id) as total_customers, (sum(sales)/count(distinct customer_id)) as sales, (sum(profit)/count(distinct customer_id)) as profit from orders;

-- Customer Ranking --

-- Total sales
SELECT 
  customer_id, customer_name,
  SUM(sales) AS total_sales,
  RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM orders
GROUP BY customer_id, customer_name
ORDER BY sales_rank;

-- AVG sales
SELECT 
  customer_id, customer_name,
  round(AVG(sales), 2) AS avg_sales,
  RANK() OVER (ORDER BY avg(sales) DESC) AS avg_sales_rank
FROM orders
GROUP BY customer_id, customer_name
ORDER BY avg_sales_rank;

-- Sales per region
select region, round(sum(sales), 2) as sales from orders group by region;

-- Sales per city
select city, round(sum(sales), 2) as sales from orders group by city order by sum(sales) desc;

-- Year Sales per city
select date_trunc('year', order_date) as year, city, round(sum(sales), 2) as sales from orders group by year, city order by year, sum(sales) desc;