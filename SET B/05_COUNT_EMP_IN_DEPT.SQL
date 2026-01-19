-- database: :memory:
SELECT 
COUNT(*) AS 'No. of Employees'
FROM Employee
GROUP BY Department
