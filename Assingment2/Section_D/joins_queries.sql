select o.o_id,c.cust_name,o.o_status from orders o 
inner join customers c on o.cust_id=c.cust_id;

select c.cust_id,c.cust_name,o.o_date from customers c 
left join orders o on c.cust_id=o.cust_id;

select c.cust_name,p.p_name,oi.quant,o.o_date from customers c 
join products p on c.cust_id=p.cust_id
join order_items oi on p.p_id=oi.p_id
join orders o on c.cust_id=o.cust_id;

select c.cust_name , sum(p.p_price*oi.quant) as total from customers c 
join orders o on c.cust_id=o.cust_id 
join order_items oi on o.o_id=oi.o_id
join products p on oi.p_id=p.p_id
group by c.cust_name;
