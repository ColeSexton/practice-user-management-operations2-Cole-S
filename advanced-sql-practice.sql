-- Join statement 

SELECT orders.id, customers.first_name, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

-- group by with sum
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- group by, count, and join
SELECT customer_id, customers.last_name, 
COUNT(orders.total_amount) AS order_count,
MAX(orders.total_amount) AS max_spent
FROM orders
JOIN customers ON orders.customer_id = orders.customer_id
GROUP BY customer_id, customers.last_name;

-- where and having/ dyamnic subqueires
SELECT id, order_date, total_amount, customer_id
FROM orders
WHERE customer_id IN(SELECT id FROM customers WHERE first_name ='Alice');

