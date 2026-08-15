SELECT * FROM Orders;
INSERT INTO Orders VALUES
(101, 1, '2026-01-10', 1500, 'Completed'),
(102, 2, '2026-01-12', 3000, 'Completed'),
(103, 1, '2026-01-15', 2500, 'Pending'),
(104, 4, '2026-01-18', 5000, 'Completed'),
(105, 3, '2026-01-20', 1200, 'Cancelled'),
(106, 5, '2026-01-22', NULL, 'Pending');

CREATE INDEX idx_customer_orders ON Orders(customer_id);
