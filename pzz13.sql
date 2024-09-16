-- 13)Determine the top 3 most ordered pizza types 
-- based on revenue for each pizza category.


select name,total_revenue from
(
select category,name,total_revenue,
rank() over(partition by category order by total_revenue ) as rn
from (
SELECT
    pt.name,pt.category,
    ROUND(SUM(od.quantity * pz.price), 2) AS total_revenue
FROM
    pizza_types AS pt
        JOIN
    pizzas AS pz ON pt.pizza_type_id = pz.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = pz.pizza_id
GROUP BY pt.name,pt.category) as a) as b
where rn <=3;








