CREATE DATABASE SchoolManagementSystem;
USE SchoolManagementSystem;

-- This set of codes creates the required entities with their corresponding attributes 

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender CHAR(1),
    class_id INT
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    teacher_id INT
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject_id INT
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50),
    class_id INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    enrollment_date DATE
);

-- Adding foreign key constraints 

ALTER TABLE students
ADD CONSTRAINT FK_1
FOREIGN KEY (class_id) REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE classes
ADD CONSTRAINT FK_2
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE teachers
ADD CONSTRAINT FK_3
FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE subjects
ADD CONSTRAINT FK_4
FOREIGN KEY (class_id) REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE enrollments
ADD CONSTRAINT FK_5
FOREIGN KEY (student_id) REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE CASCADE,
ADD CONSTRAINT FK_6
FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE CASCADE;
