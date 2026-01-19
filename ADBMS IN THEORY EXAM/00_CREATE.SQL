-- database: :memory:
CREATE TABLE Customer(
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(20),
    City VARCHAR(20)
);

CREATE TABLE Orders(
    Order_ID INT PRIMARY KEY,
    Customer_ID INT, 
    "Order Date" DATE,
    "Order total" DOUBLE
);