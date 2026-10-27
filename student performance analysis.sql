CREATE DATABASE student_performance_db;
USE student_performance_db;
SELECT DATABASE();
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    department VARCHAR(50)
);
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100),
    max_marks INT,
    pass_marks INT
);
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(100),
    exam_date DATE,
    semester INT
);
CREATE TABLE Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    exam_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    total_classes INT,
    attended_classes INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
SHOW TABLES;
INSERT INTO Students (student_name, gender, department)
VALUES
('Ravi', 'Male', 'CSE'),
('Sneha', 'Female', 'CSE'),
('Priya', 'Female', 'ECE'),
('Arun', 'Male', 'ECE'),
('Kiran', 'Male', 'CSE');
SELECT * FROM Students;
INSERT INTO Subjects (subject_name, max_marks, pass_marks)
VALUES
('SQL', 100, 35),
('Python', 100, 35),
('Java', 100, 35);
SELECT * FROM Subjects;
INSERT INTO Exams (exam_name, exam_date, semester)
VALUES
('Midterm', '2026-09-15', 1),
('Final', '2026-10-15', 1);
SELECT * FROM Exams;
INSERT INTO Marks
(student_id, subject_id, exam_id, marks_obtained)
VALUES
(1, 1, 1, 85),
(1, 2, 1, 78),
(1, 3, 1, 90),
(2, 1, 1, 92),
(2, 2, 1, 88),
(2, 3, 1, 95),
(3, 1, 1, 65),
(3, 2, 1, 70),
(3, 3, 1, 75),
(4, 1, 1, 30),
(4, 2, 1, 45),
(4, 3, 1, 50),
(5, 1, 1, 80),
(5, 2, 1, 85),
(5, 3, 1, 82);
SELECT * FROM Marks;
INSERT INTO Attendance
(student_id, total_classes, attended_classes)
VALUES
(1, 100, 90),
(2, 100, 95),
(3, 100, 80),
(4, 100, 65),
(5, 100, 85);
SELECT * FROM Attendance;
#1. Find CSE students
SELECT * FROM Students
WHERE department = 'CSE';

#2. Find ECE students
SELECT * FROM Students
WHERE department = 'ECE';

#3.Find highest mark
SELECT MAX(marks_obtained) AS highest_marks
FROM Marks;

#4.Find marks greater than 80
SELECT * FROM Marks
WHERE marks_obtained > 80;

#5. Find the lowest mark
SELECT MIN(marks_obtained) AS lowest_marks
FROM Marks;

#6.Calculate the average mark
SELECT AVG(marks_obtained) AS average_marks
FROM Marks;

#7.Calculate total marks for each student
SELECT student_id,
       SUM(marks_obtained) AS total_marks
FROM Marks
GROUP BY student_id;

#8. Count the total number of students
SELECT COUNT(*) AS total_students
FROM Students;

#9.Count students in each department
SELECT department,
       COUNT(*) AS total_students
FROM Students
GROUP BY department;

#10.Display students in alphabetical order
SELECT * FROM Students
ORDER BY student_name ASC;

#11.Display student names and subject marks
SELECT s.student_name, sub.subject_name,
       m.marks_obtained
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id;

#12.Find students who scored 90 or above
SELECT s.student_name, m.marks_obtained
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
WHERE m.marks_obtained >= 90;

#13.Find students who failed a subject
SELECT s.student_name, sub.subject_name,
       m.marks_obtained
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE m.marks_obtained < sub.pass_marks;

#14.Find students with attendance below 75%
SELECT
    s.student_name,
    a.attended_classes * 100.0 / a.total_classes
        AS attendance_percentage
FROM Students s
JOIN Attendance a
    ON s.student_id = a.student_id
WHERE a.attended_classes * 100.0 / a.total_classes < 75;

#15.Find the student with the highest attendance
SELECT
    s.student_name,
    a.attended_classes * 100.0 / a.total_classes AS attendance_percentage
FROM Students s
JOIN Attendance a
    ON s.student_id = a.student_id
ORDER BY attendance_percentage DESC
LIMIT 1;

#16.Display the top 3 marks
SELECT marks_obtained
FROM Marks
ORDER BY marks_obtained DESC
LIMIT 3;

#17.Display all subject names
SELECT subject_name
FROM Subjects;

#18.Find marks between 70 and 90
SELECT *FROM Marks
WHERE marks_obtained BETWEEN 70 AND 90;

#19.Display the top 3 marks
SELECT marks_obtained
FROM Marks
ORDER BY marks_obtained DESC
LIMIT 3;

#20.Display students from CSE who scored above 80
SELECT DISTINCT s.student_name
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
WHERE s.department = 'CSE'
AND m.marks_obtained > 80;
