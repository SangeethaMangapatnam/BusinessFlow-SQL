USE businessflow;

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT customer_name, city
FROM customers;

SELECT product_name, price
FROM products
WHERE price > 10000;

SELECT order_id, customer_id, total_amount
FROM orders
WHERE status = 'Delivered';

SELECT employee_name, department, salary
FROM employees
WHERE salary > 60000;

SELECT product_name, price
FROM products
WHERE category = 'Electronics';

SELECT *
FROM orders
WHERE order_date BETWEEN '2026-05-01' AND '2026-05-31';

SELECT product_name, price
FROM products
ORDER BY price DESC;
