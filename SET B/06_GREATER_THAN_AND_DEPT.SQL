-- database: :memory:
SELECT * FROM Employee 
WHERE Salary > 55000 AND
Department IN ('HR','Finance');