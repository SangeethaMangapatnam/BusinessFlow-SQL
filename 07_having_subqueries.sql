USE businessflow;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1;

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.status != 'Cancelled'
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > 50000
ORDER BY total_spending DESC;

SELECT employee_name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT product_name, category, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
)
ORDER BY price DESC;

SELECT employee_name, department, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

SELECT customer_name, email
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);

SELECT product_name, category, price
FROM products
WHERE product_id IN (
    SELECT product_id
    FROM order_items
);
