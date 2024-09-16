-- 9) Group the orders by date and calculate the average number of pizzas ordered per day.


SELECT 
    ROUND(AVG(quantity),0)
FROM
    (SELECT 
        ods.order_date, SUM(od.quantity) as quantity
    FROM
        orders AS ods
    JOIN order_details AS od ON ods.order_id = od.order_id
    GROUP BY ods.order_date) AS order_quantity;




