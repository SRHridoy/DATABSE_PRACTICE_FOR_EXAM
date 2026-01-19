-- database: :memory:
INSERT INTO Customer
(Customer_ID, Name, City)
VALUES
(1,'Mike','New York'),
(2,'Alice','Los Angeles'),
(3,'Sara','Chicago'),
(4,'Jane','New York');

INSERT INTO Orders
(Order_ID, Customer_ID, "Order Date","Order total")
VALUES
(100,1,'2025-07-01',100),
(101,2,'2025-06-15',50),
(102,3,'2025-07-05',150),
(103,1,'2025-07-07',75),
(104,4,'2025-07-02',200);