-- Joins -- 

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);


INSERT INTO Students VALUES
(1, 'Rahul', 101),
(2, 'Anita', 102),
(3, 'Vikas', 101),
(4, 'Neha', NULL);

INSERT INTO Courses VALUES
(101, 'Data Science'),
(102, 'Web Development'),
(103, 'Machine Learning');

SELECT s.student_name, c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;


SELECT student_name, course_name
FROM Students
NATURAL JOIN Courses;



SELECT s.student_name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id;


SELECT s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;

SELECT s1.student_name AS Student1,
       s2.student_name AS Student2,
       s1.course_id
FROM Students s1
JOIN Students s2
ON s1.course_id = s2.course_id
AND s1.student_id <> s2.student_id;


