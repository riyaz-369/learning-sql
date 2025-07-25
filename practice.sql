CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, '2023-10-01', 150.00),
    (2, '2022-01-02', 200.00),
    (1, '2022-03-03', 300.00),
    (3, '2024-06-04', 250.00),
    (1, '2022-01-05', 400.00),
    (2, '2023-10-06', 350.00),
    (3, '2025-12-07', 450.00),
    (1, '2022-04-08', 500.00);

DROP TABLE orders

--? Problem 1: Find customer who have place more then 2 orders and calculate the total amount spent by each customer.
SELECT customer_id, COUNT(order_id), sum(total_amount) as total_spent
FROM orders
GROUP BY
    customer_id
HAVING
    COUNT(order_id) > 2

--? Problem 2: Find the total amount of orders placed each month in the year 2022.
SELECT extract(
        MONTH
        FROM order_date
    ) as month, SUM(total_amount)
FROM orders
WHERE
    extract(
        YEAR
        FROM order_date
    ) = 2022
GROUP BY
    month