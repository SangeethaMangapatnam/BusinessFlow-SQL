USE businessflow;

SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    o.status,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;

SELECT
    o.order_id,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id;

SELECT
    c.customer_name,
    o.order_id,
    o.total_amount,
    p.payment_method,
    p.payment_status
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id;

SELECT
    c.customer_name,
    s.issue_type,
    s.priority,
    s.status,
    s.created_date
FROM customers c
JOIN support_tickets s
    ON c.customer_id = s.customer_id;

SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id;
