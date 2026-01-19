-- database: :memory:
-- FIND THE TOTAL NO. OF ORDERS PLACED BY EACH CUSTOMER, EXCLUDING ORDERS PLACED IN JUNE.
SELECT C.Customer_ID,COUNT(O.Customer_ID) AS Total_no_of_order
FROM Orders AS O 
JOIN Customer AS C 
ON O.Customer_ID = C.Customer_ID
WHERE O."Order Date" NOT BETWEEN '2025-06-01' AND '2025-06-30'
GROUP BY O.Customer_ID;