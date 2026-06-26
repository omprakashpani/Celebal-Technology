select p_price ,
	p_name,
	case
		when p_price>10000 then 'expensive'
		when p_price>3000 then 'moderate'
		else 'cheap'
	end as price_category
from products;

select
    c.customer_name,
    sum(o.total_amount) as total_spent,
    case
        when SUM(o.total_amount) >= 50000 then 'Gold'
        when SUM(o.total_amount) >= 20000 then 'Silver'
        else 'Bronze'
    end as customer_category
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;

select
    p.product_name,
    sum(oi.quantity) as total_quantity
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_name
order by total_quantity desc;

select
    order_date,
    total_amount,
    sum(total_amount) over (
        order by order_date
    ) as running_total
from orders;
