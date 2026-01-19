-- database: :memory:
-- FIND THE CUSTOMER WHO HAS PLACED THE HIGHEST TOTAL ORDER VALUE
SELECT C.Name
FROM Customer AS C 
JOIN Orders AS O 
ON C.Customer_ID = O.Customer_ID 
GROUP BY C.Customer_ID
ORDER BY SUM(O."Order total") DESC
LIMIT 1;