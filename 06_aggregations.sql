USE businessflow;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(total_amount) AS total_sales
FROM orders
WHERE status != 'Cancelled';

SELECT AVG(total_amount) AS average_order_value
FROM orders
WHERE status != 'Cancelled';

SELECT MAX(total_amount) AS highest_order
FROM orders;

SELECT MIN(total_amount) AS lowest_order
FROM orders;

SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.status != 'Cancelled'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT category, SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category;

SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;
