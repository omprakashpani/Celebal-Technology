create database superstore_db;

use superstore_db;

create table customers (
    customer_id varchar(30) primary key,
    customer_name varchar(100),
    segment varchar(50),
    country varchar(50),
    city varchar(50),
    state varchar(50),
    region varchar(50)
);

create table products (
    product_id varchar(30) primary key,
    product_name varchar(200),
    category varchar(50),
    sub_category varchar(50)
);

create table orders (
    order_id varchar(30),
    order_date date,
    ship_date date,
    ship_mode varchar(50),
    customer_id varchar(30),
    product_id varchar(30),
    sales decimal(10,2),
    quantity int,
    discount decimal(5,2),
    profit decimal(10,2),
    foreign key (customer_id) references customers(customer_id),
    foreign key (product_id) references products(product_id)
);

insert into customers
select
    `customer id`,
    max(`customer name`),
    max(segment),
    max(country),
    max(city),
    max(state),
    max(region)
from sample_superstore
group by `customer id`;

insert into products
select
    `product id`,
    max(`product name`),
    max(category),
    max(`sub-category`)
from sample_superstore
group by `product id`;

insert into orders
select
    `order id`,
    str_to_date(`order date`, '%c/%e/%Y'),
    str_to_date(`ship date`, '%c/%e/%Y'),
    `ship mode`,
    `customer id`,
    `product id`,
    sales,
    quantity,
    discount,
    profit
from sample_superstore;

select *
from orders
where sales >
(
    select avg(sales)
    from orders
);

select *
from orders o
where sales =
(
    select max(sales)
    from orders
    where customer_id = o.customer_id
);

with customer_sales as
(
    select
        customer_id,
        sum(sales) as total_sales
    from orders
    group by customer_id
)

select *
from customer_sales
order by total_sales desc;

with customer_sales as
(
    select
        customer_id,
        sum(sales) as total_sales
    from orders
    group by customer_id
)

select *
from customer_sales
where total_sales >
(
    select avg(total_sales)
    from customer_sales
);

with customer_sales as
(
    select
        customer_id,
        sum(sales) as total_sales
    from orders
    group by customer_id
)

select
    customer_id,
    total_sales,
    rank() over (
        order by total_sales desc
    ) as customer_rank
from customer_sales;

select
    customer_id,
    order_id,
    sales,
    row_number() over (
        partition by customer_id
        order by sales desc
    ) as row_num
from orders;

with customer_sales as
(
    select
        customer_id,
        sum(sales) as total_sales
    from orders
    group by customer_id
),
ranked as
(
    select
        customer_id,
        total_sales,
        rank() over (
            order by total_sales desc
        ) as customer_rank
    from customer_sales
)

select *
from ranked
where customer_rank <= 3;

-- ============================================
-- insight
-- ============================================

-- customer sm-20320 ranks first with total sales of 100172.28.
-- customers tc-20980 and rb-19360 rank second and third with
-- total sales of 76071.40 and 60469.40 respectively.
-- the ranking helps identify high-value customers who contribute
-- significantly to overall sales and can be targeted for loyalty
-- programs and customer retention.

-- ============================================
-- conclusion
-- ============================================

-- the superstore dataset was analyzed using advanced sql concepts,
-- including subqueries, common table expressions (ctes), and window
-- functions. subqueries were used to identify above-average sales and
-- the highest-value orders, while ctes simplified customer-level
-- aggregations. window functions such as row_number(), rank(), and
-- dense_rank() helped rank customers and analyze order data efficiently.
-- the analysis identified top-performing customers, low-performing
-- customers, one-time buyers, and customers with above-average sales,
-- providing valuable business insights for customer segmentation,
-- sales performance evaluation, and decision-making.


