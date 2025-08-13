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
```

### 2️⃣ Monthly Sales Trend
```sql
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, 
       SUM(amount) AS total_sales
FROM sales
WHERE order_status = 'Delivered'
GROUP BY month
ORDER BY month;
```

### 3️⃣ State-wise Sales Performance
```sql
SELECT state, SUM(amount) AS total_sales
FROM sales
WHERE order_status = 'Delivered'
GROUP BY state
ORDER BY total_sales DESC;
```

### 4️⃣ Payment Method Popularity
```sql
SELECT payment_method, COUNT(*) AS total_orders
FROM sales
GROUP BY payment_method
ORDER BY total_orders DESC;
```

### 5️⃣ Impact of Coupons on Sales
```sql
SELECT coupon_used, SUM(amount) AS total_sales
FROM sales
WHERE order_status = 'Delivered'
GROUP BY coupon_used;
```

---

## 📊 Key Insights
- Certain products consistently generate the highest revenue.
- Sales peak during festive months and weekends.
- UPI and Credit Card are the most preferred payment methods.
- Some states contribute disproportionately to overall revenue.
- Coupons can significantly influence sales volume.

---

## 📁 Files Included
- `amazon_sales_10k.csv` – The dataset used for analysis.  
- `queries.sql` – All SQL queries used in this analysis.  
- `README.md` – Documentation for the project.

---

## 🚀 How to Use
1. Import the CSV dataset into MySQL.
2. Run the provided SQL queries.
3. Analyze the results and generate visualizations if needed.

---
