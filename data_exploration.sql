use olist;

select * from order_payments;

select * from orders;

select * from customers;



select B.customer_city,Count(A.order_id) from orders A
JOIN customers B on A.customer_id = B.customer_id
where order_status='delivered'
group by B.customer_city 
order by 2 desc
limit 10;