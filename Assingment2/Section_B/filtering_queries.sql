SELECT *
FROM customers
WHERE email LIKE '%gmail.com';
SELECT *
FROM products
WHERE p_cat = 'Electronics';
SELECT *
FROM products
WHERE p_price > 5000;
SELECT *
FROM orders
WHERE o_status = 'Delivered';
