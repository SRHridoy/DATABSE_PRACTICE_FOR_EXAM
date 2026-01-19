SELECT * FROM orders
INNER JOIN customers 
ON orders.customer_id = customers.customer_id;