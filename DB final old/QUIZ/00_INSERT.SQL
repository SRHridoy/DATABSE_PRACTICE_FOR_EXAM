-- database: :memory:
INSERT INTO Dept 
(d_id,d_name,manager_id,floor_number)
VALUES
(1, 'Toys', 101, 10),
(2, 'Sales', 102, 8),
(3, 'HR', 103, 10);

INSERT INTO Emp
(E_id,E_name,Salary,d_id)
VALUES
(1, 'Santa', 45000, 1),
(2, 'John', 30000, 3),
(3, 'Alice', 60000, 2),
(4, 'Bob', 40000, 1);

-- DELETE FROM DEPT;
-- DELETE FROM EMP;