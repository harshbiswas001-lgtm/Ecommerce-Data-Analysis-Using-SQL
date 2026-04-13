# Ecommerce-Data-Analysis-Using-SQL
# Title SQLData Analysis Project
# Objective
To use SQL queries to extract and analyze data from an ecommerce database.
# Tools Used
· SQLite (DBBrowser for SQLite)
# Dataset Description
The dataset contains information about customers, orders, products, and order details. It is used
to analyze sales and customer behavior.
# SQLQueries & Output
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;   
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/ea2c11fb-8bf0-4ac1-b5f5-904fe59b00f5" /> 
# Total quantity sold per product
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;
