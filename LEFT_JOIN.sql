CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    restaurant_id INT,
    order_date DATE
);

INSERT INTO Orders VALUES
(101, 1, '2026-06-01'),
(102, 1, '2026-06-02'),
(103, 2, '2026-06-03');

-- Joining tables to count orders per restaurant
SELECT r.restaurant_id, r.restaurant_name,
COUNT(o.order_id) AS total_orders
FROM Restaurants r
LEFT JOIN Orders o ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.restaurant_name
HAVING COUNT(o.order_id) < 30
ORDER BY total_orders ASC;
