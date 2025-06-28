SELECT * FROM orders WHERE amount > 2000;

SELECT customer_id, SUM(amount) AS total_sales
FROM orders
GROUP BY customer_id;

SELECT c.name, o.amount, o.order_date
FROM customers c
JOIN orders o ON c.id = o.customer_id;

SELECT AVG(amount) AS avg_order_value FROM orders;

SELECT name FROM customers
WHERE id IN (
    SELECT customer_id FROM orders WHERE amount > 3000
);

CREATE VIEW sales_summary AS
SELECT customer_id, SUM(amount) AS total_sales
FROM orders
GROUP BY customer_id;

SELECT IFNULL(amount, 0) FROM orders;

