-- 3) Identify the highest-priced pizza.

SELECT 
    pt.name, pz.price
FROM
    pizza_types AS pt
        JOIN
    pizzas AS pz ON pt.pizza_type_id = pz.pizza_type_id
ORDER BY pz.price DESC
LIMIT 1;








