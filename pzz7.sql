
-- 6) Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pt.category, SUM(od.quantity) AS quantity
FROM
    pizza_types AS pt
        JOIN
    pizzas AS pz ON pt.pizza_type_id = pz.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = pz.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;






