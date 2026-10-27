# 📊 Student Performance Analysis Using SQL

A SQL-based project that analyzes student academic performance using marks, subject details, exam records, and attendance data to identify top-performing students, low scores, average marks, subject failures, and attendance patterns.

## ✨ Features

- Student and subject data management
- Exam records and marks tracking
- Student performance analysis
- Total and average marks calculation
- Highest and lowest marks identification
- Top-performing student identification
- Subject-wise marks analysis
- Failed subject identification based on pass marks
- Attendance percentage calculation
- Low attendance identification
- Department-wise student analysis
- 20 SQL queries for academic insights

## 🛠️ Tech Stack

- **MySQL**
- **MySQL Workbench**
- SQL
- Relational Database Management
- Sample Student Performance Dataset

## 📦 Database Tables

1. **Students** – Stores student names, gender, and department.
2. **Subjects** – Stores subject names, maximum marks, and pass marks.
3. **Exams** – Stores exam names, exam dates, and semester details.
4. **Marks** – Stores student IDs, subject IDs, exam IDs, and marks obtained.
5. **Attendance** – Stores total classes and attended classes for each student.

## ⚙️ How to Run

### Create the database

```sql
CREATE DATABASE student_performance_db;
USE student_performance_db;
```

### Create the tables

- Execute the `CREATE TABLE` statements in the correct order.
- Define primary keys and foreign keys to connect related tables.
- Create the Students, Subjects, Exams, Marks, and Attendance tables.

### Insert sample data

- Insert records into all five tables.
- Ensure referenced student, subject, and exam IDs exist.
- Add sample marks and attendance records.

### Run the queries

- Execute the SQL analysis queries in MySQL Workbench.
- View the results in the output grid.
- Analyze marks, subject failures, and attendance percentages.

## 📊 SQL Concepts Used

- `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`
- Aggregate functions: `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()`
- `GROUP BY`
- `JOIN`
- `DISTINCT`
- `BETWEEN`
- Comparison operators
- Primary keys and foreign keys
- Attendance percentage calculations

## 📈 Analysis Performed

- Total marks calculation for each student
- Average, highest, and lowest marks analysis
- Subject-wise marks analysis
- Identification of students scoring below pass marks
- Department-wise student count
- Top marks identification
- Attendance percentage calculation
- Identification of students with attendance below 75%
- Comparison of academic performance across students

## 👤 Project Details

**Project Name:** Student Performance Analysis Using SQL

- Designed relational database tables for student academic records.
- Inserted and organized sample student, subject, exam, marks, and attendance data.
- Developed SQL queries for academic performance analysis.
- Used aggregate functions, filtering, grouping, and joins to extract insights.
- Analyzed student marks and attendance to identify areas requiring improvement.

## 📝 Conclusion

The **Student Performance Analysis Using SQL** project demonstrates how SQL can be used to organize academic records and generate meaningful insights. It helps analyze student marks, identify subject failures, calculate attendance percentages, and understand academic performance patterns while strengthening SQL query-writing and database management skills.
