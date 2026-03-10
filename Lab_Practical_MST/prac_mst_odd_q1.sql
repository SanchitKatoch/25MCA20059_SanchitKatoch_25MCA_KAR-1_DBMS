---An online store records every purchase in a Purchases table. Each record represents a customer buying a product on a specific date.
---The analytics team wants to detect situations where multiple customers purchased the same product on the same day.
---Your task is to identify all unique pairs of customers who bought the same product on the same date.

---Requirements
---product_id must be the same
---purchase_date must be the same
---Customers must be different

---Avoid duplicate pairs:
---(CustomerA, CustomerB) should appear once
---(CustomerB, CustomerA) should not appear again

CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    purchase_date DATE
);
INSERT INTO Purchases VALUES (1, 'Cst101', 'P1', '2026-03-01');
INSERT INTO Purchases VALUES (2, 'Cst102', 'P1', '2026-03-01');
INSERT INTO Purchases VALUES (3, 'Cst103', 'P2', '2026-03-01');
INSERT INTO Purchases VALUES (4, 'Cst104', 'P1', '2026-03-01');
INSERT INTO Purchases VALUES (5, 'Cst105', 'P2', '2026-03-02');

SELECT*FROM Purchases;

SELECT 
    p1.product_id,
    p1.purchase_date,
    p1.customer_id AS CustomerA,
    p2.customer_id AS CustomerB
FROM Purchases p1
JOIN Purchases p2
ON p1.product_id = p2.product_id
AND p1.purchase_date = p2.purchase_date
AND p1.customer_id < p2.customer_id;