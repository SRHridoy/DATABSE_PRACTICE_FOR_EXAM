-- database: :memory:
SELECT D.d_name
FROM Dept AS D
JOIN Emp AS E
ON D.d_id = E.d_id
WHERE E.E_name = 'Santa';