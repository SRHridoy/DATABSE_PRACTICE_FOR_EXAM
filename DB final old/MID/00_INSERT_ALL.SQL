-- database: :memory:
INSERT INTO CUSTOMER VALUES
(1, 'Amit', 'Delhi'),
(2, 'Ravi', 'Mumbai'),
(3, 'Neha', 'Chennai'),
(4, 'Sita', 'Pune');

INSERT INTO TRUCK VALUES
(101, 'RAJA'),
(102, 'MOHAN'),
(103, 'RAJA');

INSERT INTO PACKET VALUES
(1, 1, 101, '2024-01-01', 2.5, 'BOMBAY'),
(2, 1, 102, '2024-01-02', 0.8, 'DELHI'),
(3, 2, 101, '2024-01-03', 1.2, 'BOMBAY'),
(4, 2, 103, '2024-01-04', 3.0, 'CHENNAI'),
(5, 3, 102, '2024-01-05', 0.5, 'BOMBAY'),
(6, 4, 101, '2024-01-06', 4.0, 'DELHI'),
(7, 1, 101, '2024-01-07', 1.5, 'BOMBAY'),
(8, 2, 102, '2024-01-08', 2.0, 'BOMBAY'),
(9, 3, 103, '2024-01-09', 0.9, 'PUNE'),
(10, 4, 101, '2024-01-10', 5.0, 'DELHI'),
(11, 1, 102, '2024-01-11', 2.0, 'DELHI'),
(12, 2, 101, '2024-01-12', 3.5, 'DELHI');
