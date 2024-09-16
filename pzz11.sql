-- 11) Calculate the percentage contribution of each pizza type to total revenue.
-- (revenue/total_sales*100) formula 

SELECT 
    pt.category,
    ROUND(SUM(od.quantity * pz.price) / (SELECT 
                    ROUND(SUM(od.quantity * pz.price), 2) AS total_sales
                FROM
                    order_details AS od
                        JOIN
                    pizzas AS pz ON pz.pizza_id = od.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_types AS pt
        JOIN
    pizzas AS pz ON pt.pizza_type_id = pz.pizza_type_id
        JOIN
    order_details AS od ON pz.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY revenue DESC;







