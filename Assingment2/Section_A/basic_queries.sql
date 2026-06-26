CREATE DATABASE celebaltech;
USE celebaltech;

create table customers(
cust_id int auto_increment primary key,
cust_name varchar(100) not null,
email varchar(100));

create table products(
p_id int auto_increment primary key,
p_name varchar(100) not null,
p_price numeric ,
p_cat varchar(100),
cust_id int,
foreign key(cust_id)
	references customers(cust_id)
 );
 
 
 create table orders(
 o_id int auto_increment primary key,
 cust_id int,
 o_date date,
 o_status varchar(100),
 foreign key(cust_id)
	references customers(cust_id)
    );
    
create table order_items(
 o_item_id int auto_increment primary key,
 p_id int,
 o_id int,
 quant int,
 
 foreign key(p_id)
 references products(p_id),
 foreign key(o_id)
 references orders(o_id)
 );
 
 CREATE INDEX idx_customer_email
ON customers(email);

CREATE INDEX idx_order_date
ON orders(o_date);

CREATE INDEX idx_product_category
ON products(p_cat);

CREATE INDEX idx_product_name
ON products(p_name);

INSERT INTO customers (cust_name, email)
VALUES
('John Smith', 'john@gmail.com'),
('Alice Brown', 'alice@gmail.com'),
('David Wilson', 'david@gmail.com'),
('Emma Johnson', 'emma@gmail.com'),
('Michael Clark', 'michael@gmail.com');

SELECT * FROM customers;

INSERT INTO products
(p_name, p_price, p_cat, cust_id)
VALUES
('Laptop', 65000, 'Electronics', 1),
('Mouse', 500, 'Electronics', 1),
('Keyboard', 1500, 'Electronics', 2),
('Monitor', 12000, 'Electronics', 3),
('Office Chair', 4500, 'Furniture', 4),
('Desk', 8000, 'Furniture', 5);

INSERT INTO orders
(cust_id, o_date, o_status)
VALUES
(1,'2024-03-01','Delivered'),
(2,'2024-03-05','Pending'),
(3,'2024-03-10','Delivered'),
(1,'2024-03-15','Delivered'),
(5,'2024-03-20','Pending');
 
 INSERT INTO order_items
(p_id, o_id, quant)
VALUES
(1,1,1),
(2,1,2),
(3,2,1),
(4,3,1),
(5,4,2),
(6,5,1);

SELECT COUNT(*) AS customer_count FROM customers;
SELECT COUNT(*) AS product_count FROM products;
SELECT COUNT(*) AS order_count FROM orders;
SELECT COUNT(*) AS order_item_count FROM order_items;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

DESCRIBE customers;
DESCRIBE products;
DESCRIBE orders;
DESCRIBE order_items;
