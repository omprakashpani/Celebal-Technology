SELECT COUNT(*) AS total_customers
FROM customers;
SELECT AVG(p_price) AS avg_price
FROM products;
SELECT MAX(p_price) AS highest_price
FROM products;
SELECT MIN(p_price) AS lowest_price
FROM products;
SELECT SUM(quant) AS total_quantity
FROM order_items;
SELECT
p_cat,
COUNT(*) AS product_count
FROM products
GROUP BY p_cat;
