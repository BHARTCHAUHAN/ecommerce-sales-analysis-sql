##create database amazon_sales;
use amazon_sales;
show tables;

select * from order_details;


describe order_details;

##1. Top 5 Best-Selling Products by Revenue
SELECT product_name, SUM(amount) AS total_revenue
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;
##Observation:
/*The analysis reveals the top five 
products generating the highest revenue.
 These products are the most profitable and 
 indicate strong customer demand.-*/


#2. Monthly Revenue Trend
SELECT DATE_FORMAT(STR_TO_DATE(order_date, '%Y-%m-%d'), '%Y-%m') AS month,
       SUM(amount) AS total_revenue
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY month
ORDER BY month;
##Observation:
/*
This trend highlights the months with
 peak sales performance. It helps identify
 seasonal patterns and periods when marketing
 efforts should be increased.
*/

##3. Category-wise Revenue
SELECT category, SUM(amount) AS total_revenue
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY category
ORDER BY total_revenue DESC;
##Observation:
/*
The data shows which product categories
 contribute the most to overall revenue. 
 This insight can guide inventory and marketing
 focus towards high-performing categories.
*/

##4. Top 10 Cities by Revenue
SELECT city, SUM(amount) AS total_revenue
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 10;
##Observation:
/*
The results indicate the cities generating 
the highest sales revenue. These cities could
 be targeted for localized promotions to further boost revenue
*/


##5. Payment Method Distribution
SELECT payment_method, COUNT(*) AS total_orders
FROM order_details
GROUP BY payment_method;
##Observation:
/*
The breakdown of payment methods reveals customer
preferences for transactions. This can help in 
optimizing payment options and improving customer experience.
*/


##6. Coupon Usage Impact
SELECT coupon_used, SUM(amount) AS total_revenue, COUNT(*) AS total_orders
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY coupon_used;
##Observation:
/*
This analysis measures the revenue and number 
of orders from customers using coupons versus those
who do not. It shows whether discount strategies are driving higher sales.
*/




##7. State-wise Sales
SELECT state, SUM(amount) AS total_revenue
FROM order_details
WHERE order_status = 'Delivered'
GROUP BY state
ORDER BY total_revenue DESC;
##Observation:
/*
The state-wise revenue distribution highlights
 which states have the highest demand. 
 These regions can be prioritized for expansion and marketing.
*/


