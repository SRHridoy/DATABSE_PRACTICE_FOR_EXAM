-- database: :memory:
CREATE TABLE EMP(
    E_id INT PRIMARY KEY,
    E_name VARCHAR(20),
    Salary DOUBLE,
    d_id INT,
    FOREIGN KEY(d_id) REFERENCES Dept(d_id)
    );

    