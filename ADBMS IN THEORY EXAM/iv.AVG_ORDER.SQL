-- database: :memory:
-- FIND THE AVG ORDER VALUE FOR EACH CITY.
SELECT C.City,AVG(O."Order total") AS Avg_order_value
FROM Orders AS O
JOIN Customer AS C 
ON O.Customer_ID = C.Customer_ID
GROUP BY C.City;
