-- 4) Identify the most common pizza size ordered.

SELECT 
    COUNT(od.order_id) AS Total_count_pizza, pz.size
FROM
    pizzas AS pz
        JOIN
    order_details AS od ON pz.pizza_id = od.pizza_id
GROUP BY pz.size
ORDER BY Total_count_pizza DESC;





