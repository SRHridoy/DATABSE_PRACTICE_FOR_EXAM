-- database: :memory:
CREATE TABLE CUSTOMER(
    c_no INT PRIMARY KEY,
    c_name VARCHAR(20),
    c_address VARCHAR(30)
);

CREATE TABLE  TRUCK(
    t_no INT PRIMARY KEY,
    driver_name VARCHAR(20)
);

CREATE TABLE  PACKET(
    p_no INT PRIMARY KEY,
    c_no INT,
    t_no INT,
    date_of_booking DATE,
    weight DOUBLE,
    destination VARCHAR(30),
    FOREIGN KEY (c_no) REFERENCES CUSTOMER(c_no),
    FOREIGN KEY (t_no) REFERENCES TRUCK(t_no)
);