USE businessflow;

INSERT INTO customers
(customer_name, email, phone, city, registration_date)
VALUES
('Rahul Sharma', 'rahul.sharma@gmail.com', '9876543210', 'Hyderabad', '2026-01-15'),
('Priya Reddy', 'priya.reddy@gmail.com', '9123456780', 'Chennai', '2026-01-20'),
('Arjun Kumar', 'arjun.kumar@gmail.com', '9988776655', 'Bengaluru', '2026-02-05'),
('Sneha Rao', 'sneha.rao@gmail.com', '9012345678', 'Pune', '2026-02-12'),
('Vikram Singh', 'vikram.singh@gmail.com', '9345678123', 'Mumbai', '2026-02-18'),
('Ananya Das', 'ananya.das@gmail.com', '8899776655', 'Kolkata', '2026-03-01'),
('Karthik Iyer', 'karthik.iyer@gmail.com', '9765432109', 'Coimbatore', '2026-03-10'),
('Meera Nair', 'meera.nair@gmail.com', '9090909090', 'Kochi', '2026-03-15'),
('Aditya Verma', 'aditya.verma@gmail.com', '9555555555', 'Delhi', '2026-04-02'),
('Neha Kapoor', 'neha.kapoor@gmail.com', '9222222222', 'Jaipur', '2026-04-10');

INSERT INTO products
(product_name, category, price, stock_quantity)
VALUES
('Laptop Pro 14', 'Electronics', 75000.00, 20),
('Wireless Mouse', 'Electronics', 1500.00, 100),
('Mechanical Keyboard', 'Electronics', 4500.00, 60),
('Office Chair', 'Furniture', 12000.00, 35),
('Standing Desk', 'Furniture', 25000.00, 15),
('Monitor 24 Inch', 'Electronics', 18000.00, 40),
('USB-C Hub', 'Accessories', 3500.00, 80),
('Webcam HD', 'Electronics', 5500.00, 50),
('Notebook Pack', 'Stationery', 800.00, 200),
('Backpack', 'Accessories', 2500.00, 75),
('Desk Lamp', 'Furniture', 2200.00, 45),
('External SSD 1TB', 'Electronics', 9000.00, 30),
('Headphones', 'Electronics', 6500.00, 55),
('Office Printer', 'Electronics', 22000.00, 10),
('Water Bottle', 'Accessories', 1200.00, 120);

INSERT INTO orders
(customer_id, order_date, status, total_amount)
VALUES
(1, '2026-05-01', 'Delivered', 76500.00),
(2, '2026-05-03', 'Delivered', 18000.00),
(3, '2026-05-05', 'Shipped', 4500.00),
(4, '2026-05-07', 'Delivered', 37000.00),
(5, '2026-05-10', 'Processing', 25000.00),
(6, '2026-05-12', 'Delivered', 6500.00),
(7, '2026-05-15', 'Delivered', 10500.00),
(8, '2026-05-18', 'Cancelled', 12000.00),
(9, '2026-05-20', 'Delivered', 27500.00),
(10, '2026-05-22', 'Shipped', 9000.00),
(1, '2026-05-25', 'Delivered', 12000.00),
(2, '2026-05-27', 'Processing', 30000.00),
(3, '2026-06-01', 'Delivered', 22000.00),
(4, '2026-06-03', 'Delivered', 8000.00),
(5, '2026-06-05', 'Shipped', 15500.00),
(6, '2026-06-08', 'Delivered', 75000.00),
(7, '2026-06-10', 'Processing', 18000.00),
(8, '2026-06-12', 'Delivered', 25000.00),
(9, '2026-06-15', 'Cancelled', 4500.00),
(10, '2026-06-18', 'Delivered', 32000.00);

INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 75000.00),
(1, 2, 1, 1500.00),
(2, 6, 1, 18000.00),
(3, 3, 1, 4500.00),
(4, 4, 1, 12000.00),
(4, 5, 1, 25000.00),
(5, 5, 1, 25000.00),
(6, 13, 1, 6500.00),
(7, 12, 1, 9000.00),
(7, 7, 1, 1500.00),
(8, 4, 1, 12000.00),
(9, 5, 1, 25000.00),
(9, 11, 1, 2200.00),
(9, 10, 1, 300.00),
(10, 12, 1, 9000.00),
(11, 4, 1, 12000.00),
(12, 5, 1, 25000.00),
(12, 6, 1, 5000.00),
(13, 14, 1, 22000.00),
(14, 9, 10, 800.00),
(15, 13, 1, 6500.00),
(15, 8, 1, 5500.00),
(15, 2, 1, 1500.00),
(16, 1, 1, 75000.00),
(17, 6, 1, 18000.00),
(18, 5, 1, 25000.00),
(19, 3, 1, 4500.00),
(20, 14, 1, 22000.00),
(20, 7, 1, 3500.00),
(20, 10, 1, 2500.00);

INSERT INTO payments
(order_id, payment_method, payment_status, payment_date, amount)
VALUES
(1, 'Credit Card', 'Paid', '2026-05-01', 76500.00),
(2, 'UPI', 'Paid', '2026-05-03', 18000.00),
(3, 'Credit Card', 'Paid', '2026-05-05', 4500.00),
(4, 'Debit Card', 'Paid', '2026-05-07', 37000.00),
(5, 'UPI', 'Pending', '2026-05-10', 25000.00),
(6, 'Credit Card', 'Paid', '2026-05-12', 6500.00),
(7, 'UPI', 'Paid', '2026-05-15', 10500.00),
(8, 'Credit Card', 'Refunded', '2026-05-18', 12000.00),
(9, 'Debit Card', 'Paid', '2026-05-20', 27500.00),
(10, 'UPI', 'Paid', '2026-05-22', 9000.00),
(11, 'Credit Card', 'Paid', '2026-05-25', 12000.00),
(12, 'UPI', 'Pending', '2026-05-27', 30000.00),
(13, 'Debit Card', 'Paid', '2026-06-01', 22000.00),
(14, 'UPI', 'Paid', '2026-06-03', 8000.00),
(15, 'Credit Card', 'Paid', '2026-06-05', 15500.00),
(16, 'Debit Card', 'Paid', '2026-06-08', 75000.00),
(17, 'UPI', 'Pending', '2026-06-10', 18000.00),
(18, 'Credit Card', 'Paid', '2026-06-12', 25000.00),
(19, 'UPI', 'Refunded', '2026-06-15', 4500.00),
(20, 'Debit Card', 'Paid', '2026-06-18', 32000.00);

INSERT INTO employees
(employee_name, email, department, job_title, hire_date, salary)
VALUES
('Ravi Kumar', 'ravi.kumar@businessflow.com', 'Sales', 'Sales Executive', '2023-01-10', 45000.00),
('Pooja Sharma', 'pooja.sharma@businessflow.com', 'HR', 'HR Executive', '2022-06-15', 50000.00),
('Kiran Reddy', 'kiran.reddy@businessflow.com', 'IT', 'Software Engineer', '2023-03-20', 75000.00),
('Divya Rao', 'divya.rao@businessflow.com', 'Finance', 'Financial Analyst', '2021-11-05', 68000.00),
('Arun Singh', 'arun.singh@businessflow.com', 'Sales', 'Sales Manager', '2020-08-12', 85000.00),
('Nisha Patel', 'nisha.patel@businessflow.com', 'IT', 'Backend Developer', '2022-09-18', 80000.00),
('Manoj Das', 'manoj.das@businessflow.com', 'Support', 'Support Executive', '2024-01-08', 42000.00),
('Lakshmi Iyer', 'lakshmi.iyer@businessflow.com', 'Finance', 'Accountant', '2023-07-22', 55000.00),
('Suresh Nair', 'suresh.nair@businessflow.com', 'IT', 'Database Administrator', '2021-04-10', 90000.00),
('Asha Verma', 'asha.verma@businessflow.com', 'Support', 'Support Manager', '2020-12-01', 70000.00);

INSERT INTO support_tickets
(customer_id, issue_type, priority, status, created_date, resolved_date)
VALUES
(1, 'Payment Issue', 'High', 'Resolved', '2026-05-02', '2026-05-03'),
(2, 'Product Complaint', 'Medium', 'Resolved', '2026-05-04', '2026-05-06'),
(3, 'Delivery Delay', 'High', 'Open', '2026-05-06', NULL),
(4, 'Refund Request', 'High', 'Resolved', '2026-05-08', '2026-05-10'),
(5, 'Product Information', 'Low', 'Resolved', '2026-05-11', '2026-05-11'),
(6, 'Payment Issue', 'Medium', 'Open', '2026-05-13', NULL),
(7, 'Delivery Delay', 'High', 'Resolved', '2026-05-16', '2026-05-18'),
(8, 'Account Issue', 'Low', 'Resolved', '2026-05-19', '2026-05-20'),
(9, 'Product Complaint', 'Medium', 'Open', '2026-05-21', NULL),
(10, 'Refund Request', 'High', 'Resolved', '2026-05-23', '2026-05-25'),
(1, 'Delivery Delay', 'Medium', 'Resolved', '2026-05-26', '2026-05-28'),
(2, 'Payment Issue', 'High', 'Open', '2026-05-28', NULL),
(3, 'Product Complaint', 'Low', 'Resolved', '2026-06-02', '2026-06-03'),
(4, 'Account Issue', 'Medium', 'Resolved', '2026-06-04', '2026-06-05'),
(5, 'Delivery Delay', 'High', 'Open', '2026-06-06', NULL);
