USE SchoolManagementSystem;

-- Inserting data into students table without the class_id foreign key
INSERT INTO students (student_id, first_name, last_name, age, gender) VALUES
(1, 'Kwame', 'Mensah', 16, 'M'),
(2, 'Emily', 'Johnson', 15, 'F'),
(3, 'Kofi', 'Osei', 17, 'M'),
(4, 'Anna', 'Schmidt', 16, 'F'),
(5, 'Ama', 'Boateng', 15, 'F'),
(6, 'James', 'Anderson', 16, 'M'),
(7, 'Afia', 'Badu', 17, 'F'),
(8, 'Lucas', 'Martin', 15, 'M'),
(9, 'Eshe', 'Kibwana', 16, 'F'),
(10, 'Obinna', 'Nwosu', 15, 'M'),
(11, 'Fatou', 'Diop', 17, 'F'),
(12, 'Amelia', 'Green', 16, 'F'),
(13, 'Chinedu', 'Okafor', 15, 'M'),
(14, 'Sarah', 'White', 17, 'F'),
(15, 'Zahra', 'Bello', 15, 'F'),
(16, 'Mason', 'Clark', 16, 'M'),
(17, 'Makena', 'Kariuki', 15, 'F'),
(18, 'John', 'Brown', 17, 'M'),
(19, 'Lara', 'Petrov', 16, 'F'),
(20, 'Lily', 'Nelson', 15, 'F');

-- Inserting data into classes table without the teacher_id foreign key
INSERT INTO classes (class_id, class_name) VALUES
(1, 'Grade 10 - A'),
(2, 'Grade 10 - B'),
(3, 'Grade 11 - A'),
(4, 'Grade 11 - B'),
(5, 'Grade 12 - A'),
(6, 'Grade 12 - B'),
(7, 'Grade 9 - A'),
(8, 'Grade 9 - B'),
(9, 'Grade 8 - A'),
(10, 'Grade 8 - B'),
(11, 'Grade 7 - A'),
(12, 'Grade 7 - B'),
(13, 'Grade 6 - A'),
(14, 'Grade 6 - B'),
(15, 'Grade 5 - A'),
(16, 'Grade 5 - B'),
(17, 'Grade 4 - A'),
(18, 'Grade 4 - B'),
(19, 'Grade 3 - A'),
(20, 'Grade 3 - B');

-- Inserting data into teachers table without the subject_id foreign key
INSERT INTO teachers (teacher_id, first_name, last_name) VALUES
(1, 'Mary', 'Johnson'),
(2, 'Robert', 'Kouyate'),
(3, 'Patricia', 'Smith'),
(4, 'Ahmed', 'Abdullah'),
(5, 'Jennifer', 'White'),
(6, 'William', 'Moore'),
(7, 'Linda', 'Harris'),
(8, 'Richard', 'Young'),
(9, 'Susan', 'Adams'),
(10, 'Peter', 'Okoro'),
(11, 'Beatrice', 'Mbaye'),
(12, 'Daniel', 'Thomas'),
(13, 'Miriam', 'Gyamfi'),
(14, 'John', 'Brown'),
(15, 'Fatou', 'Deng'),
(16, 'Nia', 'Taylor'),
(17, 'Lucas', 'Martinez'),
(18, 'Akua', 'Mensah'),
(19, 'Oumar', 'Diakite'),
(20, 'Emmanuel', 'Williams');

-- Inserting data into subjects table without the class_id foreign key
INSERT INTO subjects (subject_id, subject_name) VALUES
(1, 'Mathematics'),
(2, 'English Language'),
(3, 'Biology'),
(4, 'Chemistry'),
(5, 'Physics'),
(6, 'Geography'),
(7, 'History'),
(8, 'Computer Science'),
(9, 'Economics'),
(10, 'Physical Education'),
(11, 'Art'),
(12, 'Music'),
(13, 'French'),
(14, 'Business Studies'),
(15, 'Civics'),
(16, 'Agriculture'),
(17, 'Drama'),
(18, 'Health Education'),
(19, 'Environmental Science'),
(20, 'Social Studies');

-- Inserting data into enrollments table 
INSERT INTO enrollments (enrollment_id, student_id, subject_id, enrollment_date) VALUES
(1, 1, 1, '2023-09-01'),
(2, 1, 2, '2023-09-01'),
(3, 2, 1, '2023-09-01'),
(4, 2, 3, '2023-09-02'),
(5, 3, 4, '2023-09-03'),
(6, 3, 5, '2023-09-03'),
(7, 4, 6, '2023-09-04'),
(8, 4, 7, '2023-09-04'),
(9, 5, 8, '2023-09-05'),
(10, 5, 9, '2023-09-05'),
(11, 6, 10, '2023-09-06'),
(12, 6, 11, '2023-09-06'),
(13, 7, 12, '2023-09-07'),
(14, 7, 13, '2023-09-07'),
(15, 8, 14, '2023-09-08'),
(16, 8, 15, '2023-09-08'),
(17, 9, 16, '2023-09-09'),
(18, 9, 17, '2023-09-09'),
(19, 10, 18, '2023-09-10'),
(20, 10, 19, '2023-09-10');

-- Assigning classes to students
UPDATE students SET class_id = 1 WHERE student_id BETWEEN 1 AND 5;
UPDATE students SET class_id = 2 WHERE student_id BETWEEN 6 AND 10;
UPDATE students SET class_id = 3 WHERE student_id BETWEEN 11 AND 15;
UPDATE students SET class_id = 4 WHERE student_id BETWEEN 16 AND 20;

-- Assigning teachers to classes
UPDATE classes SET teacher_id = 1 WHERE class_id = 1;
UPDATE classes SET teacher_id = 2 WHERE class_id = 2;
UPDATE classes SET teacher_id = 3 WHERE class_id = 3;
UPDATE classes SET teacher_id = 4 WHERE class_id = 4;
UPDATE classes SET teacher_id = 5 WHERE class_id = 5;
UPDATE classes SET teacher_id = 6 WHERE class_id = 6;
UPDATE classes SET teacher_id = 7 WHERE class_id = 7;
UPDATE classes SET teacher_id = 8 WHERE class_id = 8;
UPDATE classes SET teacher_id = 9 WHERE class_id = 9;
UPDATE classes SET teacher_id = 10 WHERE class_id = 10;
UPDATE classes SET teacher_id = 11 WHERE class_id = 11;
UPDATE classes SET teacher_id = 12 WHERE class_id = 12;
UPDATE classes SET teacher_id = 13 WHERE class_id = 13;
UPDATE classes SET teacher_id = 14 WHERE class_id = 14;
UPDATE classes SET teacher_id = 15 WHERE class_id = 15;
UPDATE classes SET teacher_id = 16 WHERE class_id = 16;
UPDATE classes SET teacher_id = 17 WHERE class_id = 17;
UPDATE classes SET teacher_id = 18 WHERE class_id = 18;
UPDATE classes SET teacher_id = 19 WHERE class_id = 19;
UPDATE classes SET teacher_id = 20 WHERE class_id = 20;

-- Assigning subjects to teachers
UPDATE teachers SET subject_id = 1 WHERE teacher_id = 1;
UPDATE teachers SET subject_id = 2 WHERE teacher_id = 2;
UPDATE teachers SET subject_id = 3 WHERE teacher_id = 3;
UPDATE teachers SET subject_id = 4 WHERE teacher_id = 4;
UPDATE teachers SET subject_id = 5 WHERE teacher_id = 5;
UPDATE teachers SET subject_id = 6 WHERE teacher_id = 6;
UPDATE teachers SET subject_id = 7 WHERE teacher_id = 7;
UPDATE teachers SET subject_id = 8 WHERE teacher_id = 8;
UPDATE teachers SET subject_id = 9 WHERE teacher_id = 9;
UPDATE teachers SET subject_id = 10 WHERE teacher_id = 10;
UPDATE teachers SET subject_id = 11 WHERE teacher_id = 11;
UPDATE teachers SET subject_id = 12 WHERE teacher_id = 12;
UPDATE teachers SET subject_id = 13 WHERE teacher_id = 13;
UPDATE teachers SET subject_id = 14 WHERE teacher_id = 14;
UPDATE teachers SET subject_id = 15 WHERE teacher_id = 15;
UPDATE teachers SET subject_id = 16 WHERE teacher_id = 16;
UPDATE teachers SET subject_id = 17 WHERE teacher_id = 17;
UPDATE teachers SET subject_id = 18 WHERE teacher_id = 18;
UPDATE teachers SET subject_id = 19 WHERE teacher_id = 19;
UPDATE teachers SET subject_id = 20 WHERE teacher_id = 20;

-- Assigning classes to subjects
UPDATE subjects SET class_id = 1 WHERE subject_id = 1;
UPDATE subjects SET class_id = 2 WHERE subject_id = 2;
UPDATE subjects SET class_id = 3 WHERE subject_id = 3;
UPDATE subjects SET class_id = 4 WHERE subject_id = 4;
UPDATE subjects SET class_id = 5 WHERE subject_id = 5;
UPDATE subjects SET class_id = 6 WHERE subject_id = 6;
UPDATE subjects SET class_id = 7 WHERE subject_id = 7;
UPDATE subjects SET class_id = 8 WHERE subject_id = 8;
UPDATE subjects SET class_id = 9 WHERE subject_id = 9;
UPDATE subjects SET class_id = 10 WHERE subject_id = 10;
UPDATE subjects SET class_id = 11 WHERE subject_id = 11;
UPDATE subjects SET class_id = 12 WHERE subject_id = 12;
UPDATE subjects SET class_id = 13 WHERE subject_id = 13;
UPDATE subjects SET class_id = 14 WHERE subject_id = 14;
UPDATE subjects SET class_id = 15 WHERE subject_id = 15;
UPDATE subjects SET class_id = 16 WHERE subject_id = 16;
UPDATE subjects SET class_id = 17 WHERE subject_id = 17;
UPDATE subjects SET class_id = 18 WHERE subject_id = 18;
UPDATE subjects SET class_id = 19 WHERE subject_id = 19;
UPDATE subjects SET class_id = 20 WHERE subject_id = 20;
