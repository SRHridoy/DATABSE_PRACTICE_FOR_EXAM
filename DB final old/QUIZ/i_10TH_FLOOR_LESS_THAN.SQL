-- database: :memory:
SELECT E.E_name
FROM Emp AS E
JOIN Dept AS D
ON E.d_id = D.d_id
WHERE D.floor_number = 10 AND E.Salary < 50000;