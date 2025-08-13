# ecommerce-sales-analysis-sql
SQL-based analysis of a large e-commerce sales dataset (10K+ rows) to identify sales trends, top products, customer behaviour, and regional performance.

# E-Commerce Sales Analysis (SQL)

## 📌 Objective
The objective of this project is to perform SQL-based analysis on a large-scale e-commerce dataset to extract meaningful business insights.  
This includes analysing top-selling products, monthly sales trends, customer preferences, and state-wise performance.

---

## 🗂 Dataset Description
The dataset contains over **10,000 records** with the following columns:
- **order_id** – Unique identifier for each order  
- **order_date** – Date when the order was placed  
- **customer_id** – Unique customer ID  
- **product_name** – Name of the product  
- **category** – Product category  
- **quantity** – Units sold  
- **price** – Price per unit  
- **amount** – Total sale amount (quantity × price)  
- **payment_method** – Payment method used  
- **city** – Customer’s city  
- **state** – Customer’s state  
- **coupon_used** – 1 if coupon was used, 0 otherwise  
- **order_status** – Delivered, Returned, or Cancelled  

---

## 🛠 Tools & Technologies Used
- **MySQL** – Data storage and querying  
- **CSV/Excel** – Data preparation  
- **VS Code** – Query execution and documentation  

---

## 🔍 SQL Analysis Performed

### 1️⃣ Top 5 Products by Revenue
```sql
SELECT product_name, SUM(amount) AS total_revenue
FROM sales
WHERE order_status = 'Delivered'
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;
