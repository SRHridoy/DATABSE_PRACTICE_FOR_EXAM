-- database: :memory:
UPDATE Emp
SET Salary = Salary + Salary * .1
WHERE d_id IN (
    SELECT d_id
    FROM Dept
    WHERE d_name = 'Toys'
);