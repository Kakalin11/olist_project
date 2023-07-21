use olist;

select * from order_payments;


-- How many orders are there for each status?

select  order_status, count(*) as total_orders, count(*)/(select count(*) from olist.orders)*100 as total_orders_percentage from orders
group by order_status
order by 2 desc;

select * from customers;


-- Which are the top 10 cities that most orders delivered?

select B.customer_city,Count(A.order_id) from orders A
JOIN customers B on A.customer_id = B.customer_id
where order_status='delivered'
group by B.customer_city 
order by 2 desc
limit 10;

select * from orders;
select YEAR(B.order_purchase_timestamp),A.payment_type,sum(A.payment_value) from olist.order_payments A
JOIN orders B on A.order_id=B.order_id 
group by YEAR(B.order_purchase_timestamp),A.payment_type
order by 1 desc;

select * from olist.sellers;