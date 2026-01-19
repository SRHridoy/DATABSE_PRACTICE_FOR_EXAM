-- database: :memory:
SELECT C.Name
FROM Customer AS C 
JOIN Orders AS O 
ON C.Customer_ID = O.Customer_ID
WHERE O.Order_ID IS NULL;