-- 10) Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pt.name,
    ROUND(SUM(od.quantity * pz.price), 2) AS total_renvenue
FROM
    pizza_types AS pt
        JOIN
    pizzas AS pz ON pt.pizza_type_id = pz.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = pz.pizza_id
GROUP BY pt.name
ORDER BY total_renvenue DESC
LIMIT 3;






