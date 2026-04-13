SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;
SELECT o.order_id, c.customer_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
SELECT AVG(price) AS avg_price
FROM products;
SELECT product_name
FROM products
WHERE price > (SELECT AVG(price) FROM products);
SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    SUM(oi.quantity * p.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month;