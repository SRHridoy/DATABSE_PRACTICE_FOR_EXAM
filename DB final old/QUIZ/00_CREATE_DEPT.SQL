-- database: :memory:
CREATE TABLE Dept(
    d_id INT PRIMARY KEY,
    d_name VARCHAR(20),
    manager_id INT,
    floor_number INT
);