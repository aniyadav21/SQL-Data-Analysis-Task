SELECT * 
FROM customer
WHERE city = 'Los Angeles';


SELECT region, SUM(sales) AS total_sales
FROM order_rollup o
JOIN customer c ON o.customer_id = c.customer_id
GROUP BY region
ORDER BY total_sales DESC;



SELECT c.customer_id, c.customer_name, SUM(o.sales) AS total_spent
FROM customer c
JOIN order_rollup o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 10;




SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS revenue
FROM order_rollup
GROUP BY month
ORDER BY month;



SELECT customer_id, customer_name
FROM (
    SELECT c.customer_id, c.customer_name, SUM(o.sales) AS total_spent
    FROM customer c
    JOIN order_rollup o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
) sub
WHERE total_spent > (
    SELECT AVG(sales) FROM order_rollup
);


CREATE VIEW top_customers AS
SELECT c.customer_id, c.customer_name, SUM(o.sales) AS total_spent
FROM customer c
JOIN order_rollup o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 5;




SELECT segment, SUM(sales) AS segment_sales
FROM customer c
JOIN order_rollup o ON c.customer_id = o.customer_id
GROUP BY segment
ORDER BY segment_sales DESC;




