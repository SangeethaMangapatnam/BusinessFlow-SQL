USE businessflow;

CREATE INDEX idx_orders_customer
ON orders(customer_id);

SHOW INDEX FROM customers;

SHOW INDEX FROM orders;
