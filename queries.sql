

USE Student_Management;


SELECT * FROM Student;


SELECT * FROM Student
WHERE age > 20;


SELECT *
FROM Student
WHERE student_id IN (
    SELECT student_id
    FROM Enrollment
    WHERE course_id = 101
);


SELECT * FROM Student
ORDER BY name ASC;


SELECT COUNT(*) AS total_students
FROM Student;


SELECT MAX(age) AS maximum_age
FROM Student;


SELECT MIN(age) AS minimum_age
FROM Student;

SELECT AVG(marks) AS average_marks
FROM Marks;


SELECT MAX(marks) AS highest_marks
FROM Marks;

SELECT MIN(marks) AS lowest_marks
FROM Marks;


SELECT
    Student.name,
    Course.course_name
FROM Student
JOIN Enrollment
    ON Student.student_id = Enrollment.student_id
JOIN Course
    ON Enrollment.course_id = Course.course_id;


SELECT
    Student.name,
    Marks.subject,
    Marks.marks
FROM Student
JOIN Marks
    ON Student.student_id = Marks.student_id;


SELECT
    Student.name,
    Marks.subject,
    Marks.marks
FROM Student
JOIN Marks
    ON Student.student_id = Marks.student_id
WHERE Marks.marks > 85;


SELECT
    Course.course_name,
    COUNT(Enrollment.student_id) AS total_students
FROM Course
LEFT JOIN Enrollment
    ON Course.course_id = Enrollment.course_id
GROUP BY Course.course_name;


SELECT
    subject,
    AVG(marks) AS average_marks
FROM Marks
GROUP BY subject;


SELECT