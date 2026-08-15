CREATE TABLE restaurant_revenue (
restaurant_name VARCHAR(100),
order_id INT,order_amount NUMERIC);

INSERT INTO restaurant_revenue (restaurant_name, order_id, order_amount) VALUES
('Domino''s', 301, 2500.00),
('Domino''s', 302, 3100.00),
('Subway', 303, 1200.00),
('Subway', 304, 1500.00),
('Burger King', 305, 4500.00),
('Burger King', 306, 1200.00);

select restaurant_name,sum(order_amount)
AS total_revenue
FROM
  restaurant_revenue
GROUP BY
  restaurant_name
HAVING
  SUM(order_amount) > 5000
ORDER BY
  total_revenue DESC;
