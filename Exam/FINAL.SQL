-- database: :memory:

SELECT d.dept_name, COUNT(s.student_id) AS total_students
FROM Department d
JOIN Student s 
ON d.dept_id = s.dept_id
GROUP BY d.dept_name
HAVING total_students > 2;

SELECT c.course_name, AVG(e.marks) AS avg_marks
FROM Course c
JOIN Enrollment e 
ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING avg_marks > 70;

SELECT s.name
FROM Student s
JOIN Enrollment e 
ON s.student_id = e.student_id
WHERE e.marks > (SELECT AVG(marks) FROM Enrollment);


SELECT S.name 
FROM Student AS s
JOIN Department AS d 
ON s.dept_id = d.dept_id 
JOIN  Course AS c 
ON d.dept_id = c.dept_id
JOIN Enrollment AS e 
ON e.course_id = C.course_id
WHERE c.course_id IN (
    SELECT c.course_id 
    FROM Enrollment e 
    WHERE d.dept_name = 'CSE'
);


SELECT s.name
FROM Student AS s 
JOIN Enrollment AS e 
ON s.student_id = e.student_id
WHERE e.course_id IS NULL;



SELECT d.dept_name
FROM Department AS d 
JOIN Course AS C 
ON d.dept_id = C.dept_id
WHERE C.course_id IS NULL;