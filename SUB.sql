CREATE TABLE food_prices (
    food_item VARCHAR(50),
    price DECIMAL(5, 2)
);


INSERT INTO food_prices (food_item, price) VALUES
('Frozen Berries', 2.14),
('Kale', 1.71),
('Broccoli', 1.28),
('Apples', 0.70),
('Carrots', 0.52);


SELECT food_item, price
FROM food_prices
WHERE price > (SELECT AVG(price) FROM food_prices)
ORDER BY price DESC;
