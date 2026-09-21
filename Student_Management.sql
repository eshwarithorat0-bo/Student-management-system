

CREATE DATABASE Student_Management;

USE Student_Management;


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    age INT,
    gender VARCHAR(10)
);


CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    duration_years INT
);



CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_year INT,

    FOREIGN KEY (student_id)
        REFERENCES Student(student_id),

    FOREIGN KEY (course_id)
        REFERENCES Course(course_id)
);


CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,

    FOREIGN KEY (student_id)
        REFERENCES Student(student_id)
);

INSERT INTO Student
(student_id, name, email, phone, age, gender)
VALUES
(1, 'Ishwari', 'ishwari@gmail.com', '9876543210', 20, 'Female'),
(2, 'Riya', 'riya@gmail.com', '9876543211', 20, 'Female'),
(3, 'Sneha', 'sneha@gmail.com', '9876543212', 21, 'Female'),
(4, 'Pooja', 'pooja@gmail.com', '9876543213', 20, 'Female'),
(5, 'Aarav', 'aarav@gmail.com', '9876543214', 21, 'Male');




INSERT INTO Course
(course_id, course_name, duration_years)
VALUES
(101, 'Information Technology', 4),
(102, 'Computer Engineering', 4),
(103, 'Data Science', 4);



INSERT INTO Enrollment
(enrollment_id, student_id, course_id, enrollment_year)
VALUES
(1, 1, 101, 2026),
(2, 2, 101, 2026),
(3, 3, 102, 2026),
(4, 4, 101, 2026),
(5, 5, 103, 2026);


INSERT INTO Marks
(mark_id, student_id, subject, marks)
VALUES
(1, 1, 'DBMS', 85),
(2, 1, 'Python', 90),
(3, 1, 'Computer Networks', 78),
(4, 2, 'DBMS', 80),
(5, 2, 'Python', 88),
(6, 3, 'DBMS', 75),
(7, 3, 'Python', 82),
(8, 4, 'DBMS', 92),
(9, 4, 'Python', 89),
(10, 5, 'DBMS', 86),
(11, 5, 'Python', 91);