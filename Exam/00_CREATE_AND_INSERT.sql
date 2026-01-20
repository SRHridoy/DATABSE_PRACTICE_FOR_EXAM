-- database: :memory:

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Enrollment (
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    marks INT,
    PRIMARY KEY (student_id, course_id, semester),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'CSE'),
(2, 'ECE');

INSERT INTO Student (student_id, name, dept_id) VALUES
(101, 'Hridoy', 1),
(102, 'Umar', 2);

INSERT INTO Course (course_id, course_name, dept_id) VALUES
(201, 'ADBMS', 1),
(202, 'SPL', 2);

INSERT INTO Enrollment (student_id, course_id, semester, marks) VALUES
(101, 201, 'Spring', 85),
(102, 202, 'Winter', 92);

-- DELETE FROM Department;
-- DELETE FROM Enrollment;
-- DELETE FROM Student;
-- DELETE FROM Course;