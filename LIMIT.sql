CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL
);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Alice Smith'),
(2, 'Bob Jones'),
(3, 'Charlie Brown'),
(4, 'Diana Prince'),
(5, 'Robber Korth'),
(6, 'Eli Korth');


SELECT * FROM customers
ORDER BY customer_id ASC
LIMIT 5;
