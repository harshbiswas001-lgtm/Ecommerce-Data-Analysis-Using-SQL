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
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/d701b3aa-0e45-4ad9-9a7a-e3b8d4c9cc8d" />
# Get order with customer name
SELECT o.order_id, c.customer_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/56c266b1-d5f5-4acc-a243-d6b89fc6af8c" />
# Show all customers 
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/62796b6b-4be5-4903-94b2-da103bcc6983" />
# Average product price
SELECT AVG(price) AS avg_price
FROM products;
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/ec60a770-9d4d-4796-8877-4f3cdaf526bd" />
# Products with price above average
SELECT product_name
FROM products
WHERE price > (
    SELECT AVG(price) FROM products
);
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/eda36528-0b5a-4077-99b4-876dfdde4b2e" />
# Monthly revenue calculation
SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    SUM(oi.quantity * p.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month;
<img width="1920" height="1020" alt="Image" src="https://github.com/user-attachments/assets/b758529e-98f5-4aba-8e24-bddf1c0ea41c" />


