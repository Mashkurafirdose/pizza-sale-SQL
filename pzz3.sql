-- 2) Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(od.quantity * pz.price), 2) AS total_renvenue
FROM
    order_details AS od
        JOIN
    pizzas AS pz ON od.pizza_id = pz.pizza_id;


