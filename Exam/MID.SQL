-- database: :memory:

SELECT d.dept_name, COUNT(c.course_id) AS number_of_courses
FROM Department d
JOIN Course c 
ON d.dept_id = c.dept_id
GROUP BY d.dept_name;


SELECT s.name, d.dept_name, c.course_name, e.marks
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Course c ON e.course_id = c.course_id
WHERE e.semester = 'Spring';


SELECT s.name
FROM Student s
JOIN Enrollment e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;