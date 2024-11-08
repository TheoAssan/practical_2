-- the star (*) symbol is used to represent 'all' in sql
SELECT * FROM students;

-- the where keyword is used to filter the results for the desired output
SELECT * FROM students
WHERE age > 15;

-- order by can be used to sort data in either ascending or descending order
SELECT 
    class_name
FROM classes
ORDER BY class_name ASC;

-- the count function counts items based on a given criteria and aggregate functions must always be used with group by clause 
SELECT
    class_id,
    COUNT(student_id) AS 'Number of students'
FROM students
GROUP BY class_id;

-- when joining tables, they must have a common field in order for them to be linked 
SELECT 
    s.first_name,
    s.last_name,
    c.class_name
FROM students s 
JOIN classes c ON c.class_id=s.class_id;

-- all the tables being joined must have a common field between them
SELECT 
    s.first_name as "student's first name",
    su. subject_name,
    e.enrollment_id,
    t.first_name as "teacher's first name"
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN subjects su ON su.class_id=s.class_id
JOIN teachers t ON t.subject_id = su.subject_id;

