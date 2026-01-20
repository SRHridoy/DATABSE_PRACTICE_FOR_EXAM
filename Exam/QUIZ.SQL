-- database: :memory:

SELECT s.name, c.course_name, d.dept_name
FROM Student s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Course c ON e.course_id = c.course_id
JOIN Department d ON s.dept_id = d.dept_id;


SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Course c
JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;