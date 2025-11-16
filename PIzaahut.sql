use pizzahut;
select count(order_id) as "no of orders"
from orders;
select
    round(SUM(od.quantity * p.price),3)as total_revenue
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id;
select *
from pizzas
order by price desc
limit 1;
select p.size, SUM(od.quantity) as total_ordered
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id
group by p.size
order by total_ordered desc
limit 1;
select price,pt.name AS pizza_name, SUM(od.quantity) as total_ordered
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id
join pizza_types as pt on p.pizza_type_id = pt.pizza_type_id
group by price,pt.name
order by total_ordered desc
limit 5;
select pt.category, SUM(od.quantity) as total_quantity
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id
JOIN pizza_types as pt on p.pizza_type_id = pt.pizza_type_id
group by pt.category
order by total_quantity desc;
select
    hour(time) as order_hour,
    count(order_id) as total_orders
from orders
group by order_hour
order by order_hour;
SELECT AVG(daily_total) AS avg_daily_pizzas
FROM (SELECT o.order_date, SUM(od.quantity) AS daily_total
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS daily_orders;
select 
    pt.name as pizza_name,
    round(SUM(od.quantity * p.price), 2) AS type_revenue,
    ROUND(
        SUM(od.quantity * p.price) / 
        (SELECT SUM(od2.quantity * p2.price)
         FROM order_details od2
         JOIN pizzas p2 ON od2.pizza_id = p2.pizza_id) * 100,
    2) AS revenue_percentage
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue_percentage DESC;
select avg(daily_total) as avg_daily_pizzas
from (select date(o.date) as order_date, sum(od.quantity) as daily_total
    from orders as o join order_details od on o.order_id = od.order_id
    group by date(o.date)) as daily_orders;
select
    pt.name as pizza_type,
    sum(od.quantity * p.price) as total_revenue
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id
join pizza_types as pt 
    on p.pizza_type_id = pt.pizza_type_id
group by pt.name
order by total_revenue DESC
limit 3;
select
    pt.name as pizza_name,
    round(sum(od.quantity * p.price), 2) as type_revenue,
    round(
        sum(od.quantity * p.price) / 
        (select sum(od2.quantity * p2.price)
         from order_details as od2 join pizzas as p2 on od2.pizza_id = p2.pizza_id) * 100,
    2) as revenue_percentage
from order_details as od join pizzas as p on od.pizza_id = p.pizza_id 
join pizza_types as pt on p.pizza_type_id = pt.pizza_type_id
group by pt.name
order by revenue_percentage desc;
