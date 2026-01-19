-- database: :memory:
SELECT O.Order_ID,C.Name,O."Order Date"
FROM Orders AS O 
JOIN Customer AS C 
ON O.Customer_ID = C.Customer_ID
WHERE O."Order Date" = '2025-07-04' OR O."Order Date" = '2025-07-06';